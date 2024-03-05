
def algo(x):
    y=1
    z=0
    while(x>0):
        print(str(z)+" - "+str(y))
        a=y
        while(a>0):
            a-=1
            b=z
            while(b>0):
                b-=1
                y+=1
        z+=1
        x-=1
    return y


print(algo(16))

