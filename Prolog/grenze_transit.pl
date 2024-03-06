v(at,ch).
v(at,cz).
v(be,de).
v(be,lu).
v(be,nl).
v(ch,fr).
v(cz,de).
v(cz,pl).
v(de,dk).
v(de,fr).
v(de,lu).
v(de,nl).
v(de,pl).
v(fr,lu).


grenze(X,Y) :- 
    v(X,Y);
    v(Y,X).

transit(X,Y) :-
    grenze(X,Z),
    grenze(Y,Z),
    Z\==de.

