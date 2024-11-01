# coding: utf-8
import z3
import itertools
from timeit import default_timer as symabs_timer

from arlib.utils.z3_expr_utils import get_variables
from arlib.symabs.omt_symabs.z3opt_util import optimize
from arlib.symabs.omt_symabs.omt_engines import OMTEngine, OMTEngineType


class LIRASymbolicAbstraction:
    """
    Symbolic Abstraction over QF_LIA and QF_LRA
    """

    def __init__(self):
        self.initialized = False
        self.formula = None
        self.vars = []
        self.omt_engine = OMTEngine()

        self.interval_abs_as_fml = None
        self.zone_abs_as_fml = None
        self.octagon_abs_as_fml = None

    def set_omt_engine_type(self, ty):
        self.omt_engine.engine_type = ty

    def do_simplification(self):
        if self.initialized:
            simp_start = symabs_timer()
            tac = z3.Then(z3.Tactic("simplify"), z3.Tactic("propagate-values"))
            simp_formula = tac.apply(self.formula).as_expr()
            simp_end = symabs_timer()
            if simp_end - simp_start > 6:
                print("error: simplification takes more than 6 seconds!!!")
            self.formula = simp_formula
        else:
            print("error: not initialized")

    def init_from_file(self, filename: str):
        try:
            self.formula = z3.And(z3.parse_smt2_file(filename))
            # NOTE: get_variables can be very flow (maybe use solver to get the var?)
            for var in get_variables(self.formula):
                if z3.is_int(var) or z3.is_real(var):
                    self.vars.append(var)

            self.omt_engine.init_from_file(filename)
            self.initialized = True
        except z3.Z3Exception as ex:
            print("error when initialization")
            print(ex)

    def init_from_fml(self, fml: z3.BoolRef):
        try:
            self.formula = fml
            for var in get_variables(self.formula):
                if z3.is_int(var) or z3.is_real(var):
                    self.vars.append(var)
            self.initialized = True

            self.omt_engine.init_from_fml(fml)

        except z3.Z3Exception as ex:
            print("error when initialization")
            print(ex)

    def to_omt_file(self, abs_type: str):
        """
        Write to OMT file
        """
        s = z3.Solver()
        s.add(self.formula)
        omt_str = s.to_smt2()
        if abs_type == "interval":
            return omt_str
        elif abs_type == "zone":
            return omt_str
        elif abs_type == "octagon":
            return omt_str
        else:
            return omt_str

    def interval_abs(self):
        if self.omt_engine.compact_opt:
            multi_queries = []
            for var in self.vars:
                multi_queries.append(var)
            self.interval_abs_as_fml = z3.simplify(self.omt_engine.min_max_many(multi_queries))
        else:
            cnts = []
            for i in range(len(self.vars)):
                vmin = self.omt_engine.min_once(self.vars[i])
                vmax = self.omt_engine.max_once((self.vars[i]))
                # print(self.vars[i], "[", vmin, ", ", vmax, "]")
                if self.omt_engine.engine_type == OMTEngineType.OptiMathSAT:
                    # TODO: this is not elegant (OptiMathSAT already returns an assertion)
                    cnts.append(z3.And(vmin, vmax))
                else:
                    cnts.append(z3.And(self.vars[i] >= vmin, self.vars[i] <= vmax))

            self.interval_abs_as_fml = z3.simplify(z3.And(cnts))
        # return simplify(And(cnts))

    def zone_abs(self):
        zones = list(itertools.combinations(self.vars, 2))
        if self.omt_engine.compact_opt:
            multi_queries = []
            for v1, v2 in zones:
                multi_queries.append(v1 - v2)

            self.zone_abs_as_fml = z3.simplify(self.omt_engine.min_max_many(multi_queries))
        else:
            zone_cnts = []
            objs = []
            for v1, v2 in zones:
                objs.append(v1 - v2)
            for exp in objs:
                exmin = self.omt_engine.min_once(exp)
                exmax = self.omt_engine.max_once(exp)
                # TODO: this is not elegant (OptiMathSAT already returns an assertion)
                if self.omt_engine.engine_type == OMTEngineType.OptiMathSAT:
                    zone_cnts.append(z3.And(exmin, exmax))
                else:
                    zone_cnts.append(z3.And(exp >= exmin, exp <= exmax))
            self.zone_abs_as_fml = z3.simplify(z3.And(zone_cnts))
        # return simplify(And(zone_cnts))

    def octagon_abs(self):
        """Octagon abstraction"""
        octagons = list(itertools.combinations(self.vars, 2))
        if self.omt_engine.compact_opt:
            multi_queries = []
            for v1, v2 in octagons:
                multi_queries.append(v1 - v2)
                multi_queries.append(v1 + v2)

            self.octagon_abs_as_fml = z3.simplify(self.omt_engine.min_max_many(multi_queries))
        else:
            oct_cnts = []
            objs = []
            for v1, v2 in octagons:
                objs.append(v1 - v2)
                objs.append(v1 + v2)

            for exp in objs:
                exmin = self.omt_engine.min_once(exp)
                exmax = self.omt_engine.max_once(exp)
                # TODO: this is not elegant (OptiMathSAT already returns an assertion)
                if self.omt_engine.engine_type == OMTEngineType.OptiMathSAT:
                    oct_cnts.append(z3.And(exmin, exmax))
                else:
                    oct_cnts.append(z3.And(exp >= exmin, exp <= exmax))

            self.octagon_abs_as_fml = z3.simplify(z3.And(oct_cnts))
            # return simplify(And(oct_cnts))


def feat_test_counting():
    x, y, z = z3.Ints("x y z")
    # fml = And(x > 0, x < 1000000000000)
    fml = x > 0

    t = optimize(fml, x, minimize=False)
    s = z3.Solver()
    s.add(t > y)
    # print(s.check())
    # print(s.to_smt2())
    # exit(0)

    sa = LIRASymbolicAbstraction()
    sa.init_from_fml(fml)
    # sa.do_simplification()

    sa.set_omt_engine_type(OMTEngineType.Z3OPT)
    # sa.set_omt_engine_type(OMTEngineType.LINEAR_SEARCH)
    # sa.set_omt_engine_type(OMTEngineType.QUANTIFIED_SATISFACTION)

    sa.interval_abs()
    sa.zone_abs()
    sa.octagon_abs()
