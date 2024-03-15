d(X,X,1):- !.
d(C,X,0):- atomic(C), \+ C=X.
d(-U,X,-A):- d(U,X,A).
d(U+V,X,Out):- 
    d(U,X,A),
    d(V,X,B),
    (A=0,B=0, Out = 0,!;
    A\=0,B=0, Out = A,!;
    A=0, B\=0, Out = B,!;
    A\=0, B\=0, Out = A+B,!).

d(U-V,X,Out):- 
    d(U,X,A),
    d(V,X,B),
    (A=0,B=0, Out = 0,!;
    A\=0,B=0, Out = A,!;
    A=0, B\=0, Out = -B,!;
    A\=0, B\=0, Out = A-B,!).

d(U*V,X,Out):- 
    d(U,X,A),
    d(V,X,B),
    (A=0,B=0, Out = 0,!;
    A\=0,B=0, Out = A*V,!;
    A=0, B\=0, Out = B*U,!;
    A\=0, B\=0, Out = A*V+B*U,!).

