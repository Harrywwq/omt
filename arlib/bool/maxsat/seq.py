"""该算法为串行版本"""
from arlib.bool.maxsat.process import cnt
from bs import obv_bs


def sequential(hard, soft, obj_type):
    res = []
    for i in range(len(soft)):
        result = obv_bs(hard, soft[i])
        score = cnt(result)
        if obj_type[i] == 1:
            res.append(score)
        else:
            score = 2 ** len(result) - 1 - score
            res.append(score)
    return res


if __name__ == '__main__':
    fml = ''
