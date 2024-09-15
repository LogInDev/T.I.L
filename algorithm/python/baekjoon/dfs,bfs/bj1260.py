# bj 1260
from collections import deque

def dfs(graph, v, visited):
    visited[v] = True
    print(v, end=' ')
    for i in sorted(graph[v]):
        if not visited[i]:
            dfs(graph, i, visited)

def bfs(graph, v, visited):
    queue = deque([v])
    visited[v] = True
    while queue:
        v = queue.popleft()
        print(v, end=' ')
        for i in sorted(graph[v]): #작은 수부터 접근
            if not visited[i]:
                queue.append(i)
                visited[i] = True

n, m, v = map(int,input().split())
arr = [list(map(int, input().split())) for _ in range(m)]
graph=[[] for _ in range(n+1)]

for i in arr:
    graph[i[0]].append(i[1])
    graph[i[1]].append(i[0]) # 양방향

dfsVisited = [False] * (n+1)
bfsVisited = [False] * (n+1)
dfs(graph, v, dfsVisited)
print()
bfs(graph, v, bfsVisited)