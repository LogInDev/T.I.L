n, m = map(int,input().split())
q = [0]*n
for a in range(m):
    i,j,k =  map(int,input().split())
    b = i-1
    while(i-1<=b<=j-1):        
        q[b] = k
        b = b+1
for a in range(n):
    print(q[a], end=' ')
    