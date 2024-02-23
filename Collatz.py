n=27
k=0
a=3
b=1
while n!=1:
    if n%2 ==0:
        n/=2
    else:
        n=a*n+b
    k+=1

print(k)
