'''
1. 아이디어
- 2중 for, 값 1 && 방문X => DFS
- DFS를 통해 찾은 값을 저장 후 정렬해서 출력

2. 시간복잡도
- DFS : O(V+E) = 5N^2 ~= N^2 = 625 -> 가능 
- V = N^2
- E = 4V

3. 자료구조
- 그래프 저장 : int[][]
- 방문여부 : bool[][]
- 결과값 : int[]
'''

import sys
input = sys.stdin.readline

N = int(input())
# readline은 개행문자(엔터)도 문자로 취급해서 strip()필요
map = [list(map(int, input().strip())) for _ in range(N)]
chk = [[False] * N for _ in range(N)]
result = []
each = 0
dy = [0,1,0,-1]
dx = [1,0,-1,0]

def dfs(y, x):
    global each
    each +=1
    for k in range(4):
        ny = y + dy[k]
        nx = x + dx[k]
        if 0<=ny <N and 0<=nx<N:
            if map[ny][nx] == 1 and chk[ny][nx] == False:
                chk[ny][nx] = True
                dfs(ny, nx)

for j in range(N):
    for i in range(N):
        if map[j][i] == 1 and chk[j][i] ==False:
            # 방문체크표시
            chk[j][i] = True
            each = 0
            # DFS 로 크기 구하기
            dfs(j,i)
            # 크기를 결과 리스트에 넣기
            result.append(each)

result.sort()
print(len(result))
for i in result:
    print(i)
