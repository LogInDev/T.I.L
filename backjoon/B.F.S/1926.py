'''
1. 아이디어
- 2중 for => 값 1 && 방문X => BFS
- BFS 돌면서 그림 갯수 +1, 최댓값을 갱신

2. 시간복잡도
- O(V+E) = V + E = V + 4V = 5V = 5 * m * n = 5 * 250000 = 125만 < 2억(1초당) => 연산가능!
- V = m * n = 500 * 500
- E = V * 4 = 4 * 500 * 500

3. 자료구조
- 그래프 전체 지도 : int[][]
- 방문 : bool[][]
- Queue(BFS)
'''
from collections import deque

import sys 
input = sys.stdin.readline

n,m = map(int, input().split())
map = [list(map(int, input().split())) for _ in range(n)]
chk = [[False] * m for _ in range(n)]

def bfs(y,x):
    rs = 1
    dy = [0,1,0,-1]
    dx = [1,0,-1,0]
    q = deque()
    q.append((y,x))
    while q:
        ey,ex = q.popleft()
        for k in range(4):
            ny = ey + dy[k]
            nx = ex + dx[k]
            if 0<= ny < n and 0 <= nx < m:
                if map[ny][nx] == 1 and chk[ny][nx] == False:
                    chk[ny][nx] = True
                    rs += 1
                    q.append((ny,nx))  
    return rs

cnt = 0
maxv = 0
for j in range(n):
    for i in range(m):
        if map[j][i] ==1 and chk[j][i] == False:
            cnt += 1
            chk[j][i] = True
            maxv = max(maxv,bfs(j,i))

print(cnt)
print(maxv)