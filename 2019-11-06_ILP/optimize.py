from typing import List
from docplex.cp.model import CpoModel
from sys import stdout
from docplex.cp.config import context
context.solver.agent = 'local'
context.solver.local.execfile = '/Applications/CPLEX_Studio_Community129/cpoptimizer/bin/x86-64_osx/cpoptimizer'


def solve(storage_budget: List[float], 
          query_size: List[float],
          query_latency: List[List[float]]):
    """
    Solve result placement with ILP.
    :param storage_budget: (1 x n_storage) array of storage budgets.
    :param query_size: (1 x n_query) array of sizes of query.
    :param query_latency: (n_query x n_storage) array of latencies for each query when placed on
        each storage.
    """
    n_storage = len(storage_budget)
    n_query = len(query_size)
    
    # Init variables
    mdl = CpoModel()
    X = [[mdl.integer_var(min=0, max=1, name="C"+str(i)+str(j)) for j in range(n_storage)] for i in range(n_query)]

    # Objective: minimize delay
    obj = mdl.sum([X[i][j] * query_latency[i][j] for j in range(n_storage) for i in range(n_query)])
    mdl.add(mdl.minimize(obj))

    # Constraint 1: cannot exceed mem size
    for j in range(n_storage):
        mdl.add(mdl.sum([X[i][j] * query_size[i] for i in range(n_query)]) <= storage_budget[j])
    
    # Constraint 2: each query at least placed somewhere
    for i in range(n_query):
        mdl.add(mdl.sum([X[i][j] for j in range(n_storage)]) == 1)

    print('Solving model....')
    msol = mdl.solve(TimeLimit = 10)

    if msol:
        sol = [[msol[X[i][j]] for j in range(n_storage)] for i in range(n_query)]
        print('Solution found:')
        print_grid(sol)
    else:
        print('No solution found')

def print_grid(X):
    for i in range(len(X)):
        for j in range(len(X[i])):
            print(str(X[i][j]), end='\t')
        print('')


if __name__ == '__main__':
    storage_budget = [2, 5, 10, 10000]
    query_size = [4,2,4,5,3,2,3,4,5,6]
    query_latency = [
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4]
    ]
    solve(storage_budget, query_size, query_latency)
