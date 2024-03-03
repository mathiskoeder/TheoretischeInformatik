def isPrime(n,k=2):
    if(n!=k):
        if(n%k==0):
            return False
        else:
            return isPrime(n,k+1)
    return True
    
def isGoldbach(n,k=2):
    while(n-k>=n/2):
        if(isPrime(k) and isPrime(n-k)):
            return True
        else:
            return isGoldbach(n,k+1)     
    return False

print(isGoldbach(12))