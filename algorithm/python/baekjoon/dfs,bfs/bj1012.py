import sys

sys.setrecursionlimit(10**6)   # 재귀함수 최대 깊이 추가 설정
input = sys.stdin.readline
MAX = 50 + 10  # 문제에서 최대 50이라 했지만 10더 추가해서 배열 MAX값 설정

# 상하좌우 이동을 위한 변수
dx = [0, 0, 1, -1]
dy = [1, -1, 0, 0]

# DFS 함수 정의
def dfs(y, x):
    global visited
    visited[y][x] = True
    for i in range(4):
        nx = x + dx[i]
        ny = y + dy[i]
        if not visited[ny][nx] and graph[ny][nx]:
            dfs(ny, nx)

# 0. 입력 및 초기화
t = int(input()) # 테스트 케이스 수
for _ in range(t):
    m, n, k = map(int, input().split())  # m은 가로 길이, n은 세로 길이, k는 배추의 위치 수
    graph = [[False] * MAX for _ in range(MAX)]
    visited = [[False] * MAX for _ in range(MAX)]
    
    # 1. 그래프 정보 입력
    for _ in range(k):
        x, y = map(int, input().split())
        graph[y + 1][x + 1] = True  # 입력된 배추 위치에 1을 표시 - 1,1부터 시작되게(ny, nx가 0보다 작은지 범위를 벗어나는지 확인할 필요가 없어짐)

    # 2. 방문하지 않은 지점부터 dfs 돌기
    answer = 0
    for i in range(1, n + 1):
        for j in range(1, m + 1):
            if graph[i][j] and not visited[i][j]:
                dfs(i, j)
                answer += 1
    print(answer)

    result = 0
    for i in range(n):
        for j in range(m):
            if graph[i][j] == 1 and not visited[i][j]:  # 배추가 있고 아직 방문하지 않았다면
                dfs(i, j)
                result += 1  # 지렁이 한 마리 필요
    print(result)