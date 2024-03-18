karte(Alu, Beka, Cera, Dola, Erito, Faku, Gela, Hora, Iona):-
    n(Alu,Beka),
    n(Alu,Cera),
    n(Alu,Hora),
    n(Beka,Dola),
    n(Beka,Erito),
    n(Beka,Faku),
    n(Beka,Gela),
    n(Beka,Hora),
    n(Beka,Iona),
    n(Cera,Erito),
    n(Cera,Faku),
    n(Dola,Faku),
    n(Dola,Iona),
    n(Erito,Hora),
    n(Faku,Gela),
    n(Faku,Hora),
    Cera = rot,
    Hora = blau,
    Iona = rot.

farbe(rot).
farbe(blau).
farbe(rot).
farbe(ocker).

n(X,Y):-
    farbe(X),
    farbe(Y),
    X\=Y.



