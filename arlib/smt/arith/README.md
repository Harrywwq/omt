# Arithmetic


## Some ideas to explore for non-linear real/integer

### Incremental Linearization

Implemented in MathSAT5.

Basic idea: Abstraction/refinement to SMT(QF UFLA)
- non-linear multiplication, sin() and exp() modeled by uninterpreted functions
- incrementally axiomatized on demand by linear constraints

1. Abstract a non-linear (e.g., QF_NRA) formula as a linear formula (QF_UFLRA)
2. If the abstracted formula is UNSAT, then the original formula is also UNSAT
3. Else, validate the model of the QF_UFLRA formula. 
   + If the model is infeasible in the non-linear world, then
     we can refine the QF_UFLRA formula. Go to Step 2.
   + If the model is feasible in the non-linear world, then 
     the original formula is also satisfaible.

### Local Search
Implemented in Z3++ by Shaowei Cai's Group


### Fuzzing

- Convert the non-linear formula to a "program"
- Fuzz the program to obtain a solution