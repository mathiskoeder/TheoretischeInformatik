
last(X,[H|T]):-
    (T=[],
    X=H,
    !);
    last(X,T).

nextto(X,Y,[H|[N|T]]):-
    (Y=H,
    X=N);
    nextto(X,Y,[N|T]).

delete(X,[H|[]],N):-
    ((X\=H,
    N=[H]);
    (X=H)).

delete(X,[H|T],N):-
    delete(X,T,L),
    ((X\=H,
    N=[H|L]);
    (X=H,
    N=L)).





