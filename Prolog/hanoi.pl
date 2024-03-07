:- table hanoi/5.
:- set_prolog_stack(global, limit(10000000000000000000)).



hanoi(0,_,_,_,0):- !, true.
hanoi(N,A,B,C,Steps):-
    M is N-1,
    hanoi(M,A,C,B,Count1),
    hanoi(M,B,A,C,Count2),
    Steps is Count1+Count2+1.