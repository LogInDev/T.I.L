def solved():
    b = input()
    stack = []
    for i in b:
        if i =="(":
            stack.append(i)
        else:
            if len(stack) == 0:
                print('NO')
                return
            else:
                stack.pop()
    if len(stack) == 0:
        print('YES')
    else:
        print('NO')

a = int(input())
for _ in range(a):
    solved()
