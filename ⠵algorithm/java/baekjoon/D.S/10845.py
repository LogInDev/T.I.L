import sys
n = int(sys.stdin.readline().rstrip())
Ans = []
for _ in range(n):
    a = sys.stdin.readline().rstrip().split()
    if a[0] == 'push':
        Ans.append(a[1])
    elif a[0] == 'pop':
        if len(Ans) == 0:
            print(-1)
        else:
            print(Ans[0])
            del Ans[0]
    elif a[0] == 'size':
        print(len(Ans))
    elif a[0] == 'empty':
        if len(Ans) == 0:
            print(1)
        else:
            print(0)
    elif a[0] == 'front':
        if len(Ans) == 0:
            print(-1)
        else:
            print(Ans[0])
    else:
        if len(Ans) == 0:
            print(-1)
        else:
            print(Ans[len(Ans)-1])