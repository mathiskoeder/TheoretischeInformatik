def fak(x):
    if(x==1):
        return 1
    
    return x*fak(x-1)

print(fak(16))