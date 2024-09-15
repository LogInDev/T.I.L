'''
1. 아이디어
- (0, 0)은 무조건 방문O표시
- 방문 X && 값 1 ⇒ BFS
-  최단거리 → 거리계산 변수

2. 시간복잡도
- O(V+E) = 5V = 5 * 100 * 100 = 5만 < 2억(1초당) => 연산 가능
- V = 100 * 100
- E = 4 * V

3. 자료타입
- 그래표 전체 지도 : int[][]
- 방문 : bool[][]
- Queue(BFS)
'''
from collections import deque

import sys
input = sys.stdin.readline

n, m = map(int, input().split())
map = [list(map(int, input().rstrip())) for _ in range(n)]
chk = [[False] * m for _ in range(n)]

dy = [0,1,0,-1]
dx = [1,0,-1,0]

def bfs():
    q = deque()
    q.append((0,0, 1))
    while q:
        ey, ex, dist = q.popleft()
        if ey == n-1 and ex == m-1:
            return dist 

        for k in range(4):
            ny = ey + dy[k]
            nx = ex + dx[k]
            if 0 <= ny < n and 0 <= nx < m:
                if map[ny][nx] == 1 and chk[ny][nx] == False:
                    chk[ny][nx] = True
                    q.append((ny, nx, dist + 1))
    return -1

chk[0][0] = True
print(bfs())