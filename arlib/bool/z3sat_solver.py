# coding: utf-8
"""
Useful functions for exploring Z3's powerful SAT engine.
  - Z3SATSolver
  - Z3MaxSATSolver

Currently, we hope to use this as the Boolean solver of the parallel CDCL(T) engine.
"""
from typing import List

import z3


class Z3SATSolver:
    def __init__(self, logic="QF_FD"):
        self.int2z3var = {}  # for initializing from int clauses
        self.solver = z3.SolverFor(logic)
        # self.solver = z3.SimpleSolver()

    def from_smt2file(self, fname: str):
        self.solver.add(z3.And(z3.parse_smt2_file(fname)))

    def from_smt2string(self, smtstring: str):
        self.solver.add(z3.And(z3.parse_smt2_string(smtstring)))

    def from_int_clauses(self, clauses: List[List[int]]):
        """
        Initialize self.solver with a list of clauses
        """
        # z3_clauses = []
        for clause in clauses:
            conds = []
            for t in clause:
                if t == 0: break
                a = abs(t)
                if a in self.int2z3var:
                    b = self.int2z3var[a]
                else:
                    b = z3.Bool("k!{}".format(a))
                    # b = z3.BitVec("k!{}".format(a), 1)
                    self.int2z3var[a] = b
                b = z3.Not(b) if t < 0 else b
                conds.append(b)
            self.solver.add(z3.Or(*conds))
            # z3_clauses.append(z3.Or(*conds))

    def get_z3var(self, intname: int):
        """
        Given an integer (labeling a Boolean var.), return its corresponding Z3 Boolean var
        NOTE: this function is only meaningful when the solver is initialized by
          from_int_clauses, from_dimacsfile, or from_dimacsstring
        """
        if intname in self.int2z3var:
            return self.int2z3var[intname]
        raise Exception(str(intname) + " not in the var list!")

    def get_consequences(self, prelist: List[z3.BoolRef], postlist: List[z3.BoolRef]):
        try:
            res, factslist = self.solver.consequences([prelist], [postlist])
            if res == z3.sat:
                return factslist
        except Exception as ex:
            raise ex

    def get_unsat_core(self, assumptions: List[z3.BoolRef]):
        raise NotImplementedError

    def check_sat_assuming(self, assumptions: List[z3.BoolRef]):
        if self.solver.check(assumptions) == z3.sat:
            return True
        return False


class Z3MaxSATSolver:
    """
    MaxSAT
    """

    def __init__(self):
        # self.fml = None
        self.int2z3var = {}  # for initializing from int clauses
        self.solver = None
        self.hard = []
        self.soft = []
        self.weight = []

    def from_wcnf_file(self, fname: str):
        self.solver = z3.Optimize()
        self.solver.from_file(fname)

    def from_int_clauses(self, hard: List[List[int]], soft: List[List[int]], weight: List[int]):
        """
        TODO: handle two different cases (each clause ends with 0 or not)
        """
        self.solver = z3.Optimize()
        # self.solver.set('maxsat_engine', 'wmax')
        self.solver.set('maxsat_engine', 'maxres')

        for clause in hard:
            conds = []
            for t in clause:
                if t == 0: break
                a = abs(t)
                if a in self.int2z3var:
                    b = self.int2z3var[a]
                else:
                    b = z3.Bool("k!{}".format(a))
                    # b = z3.BitVec("k!{}".format(a), 1)
                    self.int2z3var[a] = b
                b = z3.Not(b) if t < 0 else b
                conds.append(b)

            cls = z3.Or(*conds)
            self.solver.add(cls)
            self.hard.append(cls)

        for i in range(len(soft)):
            conds = []
            for t in soft[i]:
                if t == 0: break  # TODO: need this?
                a = abs(t)
                if a in self.int2z3var:
                    b = self.int2z3var[a]
                else:
                    b = z3.Bool("k!{}".format(a))
                    # b = z3.BitVec("k!{}".format(a), 1)
                    self.int2z3var[a] = b
                b = z3.Not(b) if t < 0 else b
                conds.append(b)

            cls = z3.Or(*conds)
            self.solver.add_soft(cls, weight=weight[i])
            self.soft.append(cls)
            self.weight.append(weight[i])

    def check(self):
        """
        TODO: get rid of self.hard, self.soft, and self.cost
          use the API of Optimize() to obtain the cost...
          cost: sum of weight of falsified soft clauses
        """
        cost = 0
        try:
            # print(len(self.solver.objectives()))
            if self.solver.check() == z3.sat:
                model = self.solver.model()
                for i in range(len(self.soft)):
                    if z3.is_false(model.eval(self.soft[i])):
                        cost += self.weight[i]
                print("finish z3 MaxSAT")
                # TODO: query the weight...
        except Exception as ex:
            print(ex)
            raise ex
        return cost
