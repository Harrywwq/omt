"""每次选取单个目标4个比特位计算"""
import multiprocessing
import os
import concurrent.futures
from pysat.solvers import Solver
import time
from arlib.bool.maxsat.process import cnf_from_z3, read_cnf, res_z3_trans, assum_in_m, list_to_int


def get_obj(queue):  # 从队列获取目标
    if queue.empty():
        return None
    q = queue.get_nowait()
    return q


# 随机选取开始位置
def bs_3(constr, objs, res, q, solver='m22'):
    t = time.time()
    with Solver(bootstrap_with=constr, name=solver) as s:
        if s.solve():
            m = s.get_model()
        else:
            print('UNSAT')
            return
        while not q.empty():
            i = get_obj(q)
            if i is None:
                continue
            r = list(res[i])
            for j in range(4):
                if len(r) < len(objs[i]):
                    lit = objs[i][len(r)]
                    assum = r + [lit]
                    if assum_in_m(assum, m):
                        r.append(lit)
                    else:
                        if s.solve(assumptions=assum):
                            r.append(lit)
                            m = s.get_model()
                        else:
                            r.append(-lit)
                else:
                    break
            res[i] = r
            if len(r) < len(objs[i]):
                q.put(i)
    t = time.time()-t
    return t


def para_obj_3(forml, objs, con, k, solver='m22'):
    for obj in objs:
        obj.reverse()
    with multiprocessing.Manager() as m:
        obj_queue = m.Queue()
        for i in range(len(objs)):
            obj_queue.put(i)
        res = m.list([m.list([]) for _ in range(len(objs))])
        with concurrent.futures.ProcessPoolExecutor(max_workers=k, mp_context=multiprocessing.get_context("fork")) as executor:
            futures = [executor.submit(bs_3, forml, objs, res, obj_queue, solver) for _ in range(k)]
        result = []
        for r in res:
            result.append(list(r))
    result = list_to_int(result, con)
    return result


if __name__ == '__main__':
    path = os.getcwd()
    path = os.path.dirname(path)
    path = os.path.dirname(path)
    path = os.path.dirname(path)

    file_2 = r'benchmarks/omt/clearblue/case110691201.smt2'

    filename = os.path.join(path, file_2)
    t = time.time()
    d = cnf_from_z3(filename)
    hard, soft, con = read_cnf(d)
    res = para_obj_3(hard, soft, con, 4)
    t = time.time() - t
    print(res)
    print(t)
    '''t = time.time()
    res_z3 = subprocess.run(['z3', 'opt.priority=box', filename],
                            capture_output=True,
                            text=True,
                            check=True).stdout
    t_z3 = time.time() - t
    print(res_z3)
    print(res == res_z3_trans(res_z3))
    print('z3:', t_z3)'''
    r_z3 = [18446744073709551615, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 18446744073709551615, 0, 18446744073709551615, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 0, 0, 0, 0, 18446744073709551615, 0, 18446744073709551615, 0]
    print(res == r_z3)