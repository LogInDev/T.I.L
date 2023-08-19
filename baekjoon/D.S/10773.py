import sys
a = int(sys.stdin.readline().rstrip())
b = []
for i in range(a):
    q = int(sys.stdin.readline().rstrip())
    if q == 0:
        if len(b) != 0:
            b.pop()
    else:
        b.append(q)
sum = 0
for i in b:
    sum += i
print(sum)