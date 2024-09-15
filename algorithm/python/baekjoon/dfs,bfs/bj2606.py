def dfs(graph, v, visited):
    visited[v] = True
    for i in graph[v]:
        if not visited[i]:
            dfs(graph, i, visited)

n = int(input())  # 노드(컴퓨터) 개수
m = int(input())  # 간선 개수

graph = [[] for _ in range(n+1)]
result = 0
# print(graph)

for _ in range(m):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)
    
visited = [False] * (n+1)
dfs(graph, 1, visited)

for i in visited:
    if i:
        result += 1
print(result - 1)