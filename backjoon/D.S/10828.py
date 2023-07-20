import sys
a = int(sys.stdin.readline().rstrip())
Ans = []
for i in range(a):
    b = sys.stdin.readline().rstrip().split()
    if b[0] == 'push':
        Ans.append(b[1])
    elif b[0] == 'pop':
        if len(Ans) == 0:
            print(-1)
        else:
            print(Ans[-1])
            Ans.pop()
    elif b[0] == 'size':
        print(len(Ans))
    elif b[0] == 'empty':
        if len(Ans) == 0:
            print(1)
        else:
            print(0)
    elif b[0] == 'top':
        if len(Ans) == 0:
            print(-1)
        else:
            print(Ans[-1])

