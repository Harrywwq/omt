"""算法1为将目标保存到队列中，多个进程从队列中取目标并求最值"""
import multiprocessing as mp
import concurrent.futures
import subprocess
import time
import os
from pysat.solvers import Solver
from arlib.bool.maxsat.process import cnf_from_z3, read_cnf, res_z3_trans, cnt


def en_que(objs, queue):  # 将目标入队
    for i in range(len(objs)):
        queue.put([objs[i], i])
    return


def get_obj(queue):  # 从队列获取目标
    if queue.empty():
        return []
    q = queue.get_nowait()
    return q


def obv_bs(clauses, literals, solver='m22'):
    result = []
    s = Solver(bootstrap_with=clauses,name=solver)
    bits = []
    for i in reversed(range(len(literals))):
        bits.append(literals[i])
    #s.set_phases(bits)
    if s.solve():
        m = s.get_model()
        # print(m)
    else:
        print('UNSAT')
        return result

    for lit in bits:
        if m[lit - 1] > 0:
            result.append(lit)
        else:
            result.append(lit)
            if s.solve(assumptions=result):
                m = s.get_model()
            else:
                result.pop()
                result.append(-lit)
    s.delete()
    # print(result)
    return result


def run_box_opt_3(formula, objs_queue, res, obj_type, solver='m22'):  # 使用队列作为获取目标方式
    t = time.time()
    obj = get_obj(objs_queue)
    while len(obj):
        result = obv_bs(formula, obj[0], solver)
        score = cnt(result)
        i = obj[1]
        if obj_type[i] == 1:
            res[i] = score
        else:
            score = 2**len(result)-1-score
            res[i] = score
        # print(obj[1], score)
        obj = get_obj(objs_queue)

    t = time.time()-t
    return t


def parall_queue_3(hard, soft, obj_type, k, solver='m22'):  # 输入硬软约束，返回结果和运行时间
    t3 = time.time()
    num = len(soft)
    with mp.Manager() as m:
        # lock = m.Lock()
        obj_queue = m.Queue()
        en_que(soft, obj_queue)
        res = m.list([-1]*num)
        t1 = time.time()
        with concurrent.futures.ProcessPoolExecutor(max_workers=k) as executor:
            futures = [executor.submit(run_box_opt_3, hard, obj_queue, res, obj_type, solver) for _ in range(k)]
        t2 = time.time()-t1
        result = []
        for r in res:
            result.append(r)
        t1 = time.time()-t1
    t = time.time()-t3
    return result, [t2, t1, t]


if __name__ == '__main__':
    path = os.getcwd()
    path = os.path.dirname(path)
    path = os.path.dirname(path)
    path = os.path.dirname(path)

    file_1 = r'benchmarks/omt/clearblue/case110691201.smt2'

    filename = os.path.join(path, file_1)

    t = time.time()
    d = cnf_from_z3(filename)
    t_1 = time.time()-t
    hard, soft, con = read_cnf(d)
    t_trans = time.time()-t
    res, t_r = parall_queue_3(hard, soft, con, 4, 'g3')
    t = time.time()-t
    print('t', t, [t_1,t_trans], t_r)
    print('res:', res)
    t = time.time()
    res_z3 = subprocess.run(['z3', 'opt.priority=box', filename],
                            capture_output=True,
                            text=True,
                            check=True).stdout
    t_z3 = time.time() - t
    print(res_z3)
    print(res == res_z3_trans(res_z3))
    print('z3:', t_z3)
