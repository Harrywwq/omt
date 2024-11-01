# coding: utf-8
"""
For solving the following formulas
- QF_FP
- QF_BVFP?
"""
import logging

import z3
from pysat.formula import CNF
from pysat.solvers import Solver

from arlib.utils import SolverResult

logger = logging.getLogger(__name__)


class QFFPSolver:
    """
    This class is used to check the satisfiability of QF_FP formulas. It uses various tactics from Z3
    to translate the formula to CNF and then use PySAT to solve it.
    """
    sat_engine = 'mgh'
    def __init__(self):
        self.fml = None
        # self.vars = []
        self.verbose = 0

    def solve_smt_file(self, filepath: str):
        fml_vec = z3.parse_smt2_file(filepath)
        return self.check_sat(z3.And(fml_vec))

    def solve_smt_string(self, smt_str: str):
        fml_vec = z3.parse_smt2_string(smt_str)
        return self.check_sat(z3.And(fml_vec))

    def solve_smt_formula(self, fml: z3.ExprRef):
        return self.check_sat(fml)

    def check_sat(self, fml):
        # z3.set_param("verbose", 15)
        """Check satisfiability of an QF_FP formula"""
        if QFFPSolver.sat_engine == 'z3':
            return self.solve_qffp_via_z3(fml)
        logger.debug("Start translating to CNF...")

        qffp_preamble = z3.AndThen(z3.With('simplify', arith_lhs=False, elim_and=True),
                                   'propagate-values',
                                   'fpa2bv',
                                   'propagate-values',
                                   # 'reduce-bv-size',   # should we add this?
                                   z3.With('simplify', arith_lhs=False, elim_and=True),
                                   'ackermannize_bv',
                                   z3.If(z3.Probe('is-qfbv'),
                                         z3.AndThen('bit-blast',
                                                    'simplify'),
                                         'simplify'),
                                   )

        try:
            # qffp_blast = z3.With(qffp_preamble, elim_and=True, push_ite_bv=True, blast_distinct=True)
            qffp_blast = qffp_preamble
            after_simp = qffp_blast(fml).as_expr()
            if z3.is_false(after_simp):
                return SolverResult.UNSAT
            if z3.is_true(after_simp):
                return SolverResult.SAT

            g_probe = z3.Goal()
            g_probe.add(after_simp)
            is_bool = z3.Probe('is-propositional')
            if is_bool(g_probe) == 1.0:
                to_cnf_impl = z3.AndThen(z3.With('simplify', local_ctx=True, flat=False, flat_and_or=False),
                                         'aig',
                                         'tseitin-cnf')
                # o_cnf = z3.With(to_cnf_impl, elim_and=True, push_ite_bv=True, blast_distinct=True)
                to_cnf = to_cnf_impl
                blasted = to_cnf(after_simp).as_expr()

                if z3.is_false(blasted):
                    return SolverResult.UNSAT
                elif z3.is_true(blasted):
                    return SolverResult.SAT

                g_to_dimacs = z3.Goal()
                g_to_dimacs.add(blasted)
                pos = CNF(from_string=g_to_dimacs.dimacs())
                # print("Running pysat...{}".format(QFFPSolver.sat_engine))
                aux = Solver(name=QFFPSolver.sat_engine, bootstrap_with=pos)
                if aux.solve():
                    return SolverResult.SAT
                return SolverResult.UNSAT
            else:
                # sol = z3.Tactic('smt').solver()
                sol = z3.SolverFor("QF_FP")
                sol.add(after_simp)
                res = sol.check()
                if res == z3.sat:
                    return SolverResult.SAT
                elif res == z3.unsat:
                    return SolverResult.UNSAT
                else:
                    return SolverResult.UNKNOWN

        except Exception as ex:
            print("ERROR")
            # exit(0)
            print(ex)
            # sol = z3.Solver()
            # sol.add(self.fml)
            # print(sol.to_smt2())
            return SolverResult.UNKNOWN

    def solve_qffp_via_z3(self, fml: z3.ExprRef):
        sol = z3.SolverFor("QF_FP")
        sol.add(fml)
        res = sol.check()
        if res == z3.sat:
            return SolverResult.SAT
        elif res == z3.unsat:
            return SolverResult.UNSAT
        else:
            return  SolverResult.UNKNOWN

def demo_qffp():
    z3.set_param("verbose", 15)
    fml_str = """
(set-logic QF_FP)
 (declare-fun fpv1 () Float32)
 (declare-fun fpv2 () Float32)
 (declare-fun fpv3 () Float32)
 (declare-fun v0 () Bool)
 (declare-fun v1 () Bool)
 (declare-fun v2 () Bool)
 (declare-fun fpv6 () Float32)
 (declare-fun fpv7 () Float32)
 (declare-fun v3 () Bool)
 (declare-fun v4 () Bool)
 (declare-fun fpv8 () Float32)
 (declare-fun v5 () Bool)
 (declare-fun v6 () Bool)
 (assert (or (or v3 (not (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24))) (fp.isPositive fpv7)) false))
 (assert (or (or v5 (fp.isPositive fpv7) v3) false))
 (assert (or (or v5 (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1))) false))
 (assert (or (or v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1))) false))
 (assert (or (or v3 (not (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24))) v3) false))
 (assert (or (or v5 (fp.isPositive fpv7) v3) false))
 (assert (or (or (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7))) false))
 (assert (or (or v3 v3 (not (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)))) false))
 (assert (or (or (not (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24))) v5 v5) false))
 (assert (or (or v5 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v5) false))
 (assert (or (or (fp.isPositive fpv7) (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1))) false))
 (assert (or (or v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1))) false))
 (assert (or (or (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (fp.isPositive fpv7) v5) false))
 (assert (or (or v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1))) false))
 (assert (or v3 v3 (not (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)))))
 (assert (or (fp.isPositive fpv7) (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1))))
 (assert (and (or v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1))) (or (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (fp.isPositive fpv7) v5) (or (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)))))
 (assert (and (and (or v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1))) (or (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (fp.isPositive fpv7) v5) (or (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)))) (or v5 (fp.isPositive fpv7) v3) (or (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (fp.isPositive fpv7) v5) (or v3 v3 (not (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)))) (or (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)))))
 (assert (=> (or v3 (not (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24))) (fp.isPositive fpv7)) (and (or v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1))) (or (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (fp.isPositive fpv7) v5) (or (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7))))))
 (assert (or (or v5 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v5) (and (or v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1))) (or (xor v1 (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1) (xor (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) (fp.geq fpv8 fpv2 ((_ to_fp 8 24) RNA 63910191.0) (_ -oo 8 24)) (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v4 (xor (or v1 v2 v1) (or v1 v2 v1) (xor v0 (fp.isNormal (_ +oo 8 24)) (fp.isNormal (_ +oo 8 24)) v1 (fp.isNormal (_ +oo 8 24)) (or v1 v2 v1) (or v1 v2 v1)) (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) (or v1 v2 v1) (fp.isPositive fpv7) (fp.isPositive fpv7)) v1)) (fp.isPositive fpv7) v5) (or (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7)) v3 (or (fp.eq (_ +zero 8 24) fpv3 (_ NaN 8 24) (_ -oo 8 24) (_ +oo 8 24)) v2 v2 (fp.isPositive fpv7))))))
 (check-sat)
        """

    sol = QFFPSolver()
    print(sol.solve_smt_string(fml_str))


if __name__ == "__main__":
    demo_qffp()
