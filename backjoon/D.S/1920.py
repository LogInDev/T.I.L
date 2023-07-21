import sys
n = int(sys.stdin.readline().rstrip())
a = set(map(int, sys.stdin.readline().rstrip().split()))
m = int(sys.stdin.readline().rstrip())
b = map(int, sys.stdin.readline().rstrip().split())

for num in b:
    print(1) if num in a else print(0)