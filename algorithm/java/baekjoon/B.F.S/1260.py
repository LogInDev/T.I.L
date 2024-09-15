'''
1. 아이디어
- graph 정보입력

2. 시간복잡도
- 
3. 자료구조
- 
'''

import sys
input = sys.stdin.readline

N, M, V = map(int, input().split())

graph = [[False] * (N + 1) for _ in range(N + 1)]
visited = [False] * (N + 1)

# graph 정보 입력
for _ in range(M):
    a, b = map(int, input().split())
    graph[a][b] = True
# dfs
# bfs