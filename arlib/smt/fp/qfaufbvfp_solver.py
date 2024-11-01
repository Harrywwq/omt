"""
For solving the following...
- QF_ABVFP
- QF_AUFBVFP
...?
"""
import logging

import z3
from pysat.formula import CNF
from pysat.solvers import Solver

from arlib.utils import SolverResult

logger = logging.getLogger(__name__)


class QFAUFBVFPSolver:
    sat_engine = 'mgh'

    def __init__(self):
        """
        Initialize the QFAUFBVSolver instance.
        """
        self.fml = None
        # self.vars = []
        self.verbose = 0

    def solve_smt_file(self, filepath: str):
        """
        Solve an SMT problem from a file.

        Args:
            filepath (str): The path to the SMT file.

        Returns:
            SolverResult: The result of the solver (SAT, UNSAT, or UNKNOWN).
        """
        fml_vec = z3.parse_smt2_file(filepath)
        return self.check_sat(z3.And(fml_vec))

    def solve_smt_string(self, smt_str: str):
        """
        Solve an SMT problem from a string.

        Args:
            smt_str (str): The SMT problem as a string.

        Returns:
            SolverResult: The result of the solver (SAT, UNSAT, or UNKNOWN).
        """
        fml_vec = z3.parse_smt2_string(smt_str)
        return self.check_sat(z3.And(fml_vec))

    def solve_smt_formula(self, fml: z3.ExprRef):
        """
        Solve an SMT problem from a Z3 formula.

        Args:
            fml (z3.ExprRef): The Z3 formula representing the SMT problem.

        Returns:
            SolverResult: The result of the solver (SAT, UNSAT, or UNKNOWN).
        """
        self.check_sat(fml)

    def check_sat(self, fml):
        """Check satisfiability of an formula"""
        if self.sat_engine == 'z3':
            return self.solve_qfaufbvfp_via_z3(fml)
        logger.debug("Start translating to CNF...")

        qfaufbvfp_preamble = z3.AndThen('simplify',
                                        'propagate-values',
                                        'fpa2bv',
                                        'solve-eqs',
                                        'elim-uncnstr',
                                        'reduce-bv-size',
                                        z3.With('simplify', som=True, pull_cheap_ite=True, push_ite_bv=False,
                                                local_ctx=True, local_ctx_limit=10000000),
                                        # 'bvarray2uf',  # this tactic is dangerous (it only handles specific arrays)
                                        'max-bv-sharing',
                                        # 'fpa2bv',
                                        'ackermannize_bv',
                                        z3.If(z3.Probe('is-qfbv'),
                                              z3.AndThen('bit-blast',
                                                         z3.With('simplify', arith_lhs=False, elim_and=True)),
                                              'simplify'),
                                        )

        qfaufbv_prep = z3.With(qfaufbvfp_preamble, elim_and=True, sort_store=True)

        after_simp = qfaufbv_prep(fml).as_expr()
        if z3.is_false(after_simp):
            return SolverResult.UNSAT
        elif z3.is_true(after_simp):
            return SolverResult.SAT

        g_probe = z3.Goal()
        g_probe.add(after_simp)
        is_bool = z3.Probe('is-propositional')
        if is_bool(g_probe) == 1.0:
            to_cnf_impl = z3.AndThen('simplify', 'tseitin-cnf')
            to_cnf = z3.With(to_cnf_impl, elim_and=True, push_ite_bv=True, blast_distinct=True)
            blasted = to_cnf(after_simp).as_expr()

            if z3.is_false(blasted):
                return SolverResult.UNSAT
            elif z3.is_true(blasted):
                return SolverResult.SAT

            g_to_dimacs = z3.Goal()
            g_to_dimacs.add(blasted)
            pos = CNF(from_string=g_to_dimacs.dimacs())
            aux = Solver(name=QFAUFBVFPSolver.sat_engine, bootstrap_with=pos)
            if aux.solve():
                return SolverResult.SAT
            return SolverResult.UNSAT
        # the else part
        # sol = z3.Tactic('smt').solver()
        return self.solve_qfaufbvfp_via_z3(after_simp)

    def solve_qfaufbvfp_via_z3(self, fml: z3.ExprRef):
        sol = z3.SolverFor("QF_AUFBV")
        sol.add(fml)
        res = sol.check()
        if res == z3.sat:
            return SolverResult.SAT
        elif res == z3.unsat:
            return SolverResult.UNSAT
        else:
            return SolverResult.UNKNOWN


def demo_qfaufbvfp():
    return


if __name__ == "__main__":
    demo_qfaufbvfp()
