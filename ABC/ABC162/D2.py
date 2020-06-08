n = int(input())
s = input()
r=[]
g=[]
b=[]
for t in range(n):
    if s[t] == "R":
        r.append(t)
    elif s[t] == "G":
        g.append(t)
    else:
        b.append(t)

bsize = len(b)
sum = 0
for r_num in r:
    for g_num in g:
        kari = 0
        if r_num>g_num:
            max=r_num
            min=g_num
        else:
            max=g_num
            min=r_num
    
        if (max-min)%2==0 and (((max-min)/2)+min) in b :
            kari -=1

        if (2*max-min) in b:
            kari -=1

        if (min-(max-min)) in b:
            kari -=1

        sum += bsize+kari

print (sum)