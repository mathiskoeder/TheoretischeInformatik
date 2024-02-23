k=0
a=3
b=7
for m in range(1,21):
    n=m
    r=list()
    while n!=1:
        if n%2 ==0:
            n/=2
        else:
            n=a*n+b

        if n in r:
            print(m)
            break
        r.append(n)
        

        
        