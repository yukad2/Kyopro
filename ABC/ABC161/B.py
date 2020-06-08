import math

n,m = map(int,input().split())
li = list(map(int,input().split()))
wa = 0
for i in li :
    wa+=i

for i in li :
    if i < math.ceil((wa/float(4*m))) :
        n -= 1

if n>=m:
    print("Yes")
else:
    print("No")
