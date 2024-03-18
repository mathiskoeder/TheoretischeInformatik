:- set_prolog_stack(global, limit(10000000000000000000)).
n("Alu","Beka").
n("Alu","Cera").
n("Alu","Hora").
n("Beka","Dola").
n("Beka","Erito").
n("Beka","Faku").
n("Beka","Gela").
n("Beka","Hora").
n("Beka","Iona").
n("Cera","Erito").
n("Cera","Faku").
n("Dola","Faku").
n("Dola","Iona").
n("Erito","Hora").
n("Faku","Gela").
n("Faku","Hora").
rot(Land,Wahr):-
    (farbe(Land,Farbe),
    Farbe=rot,
    Wahr=true,!);
    Wahr=false.
blau(Land,Wahr):-
    (farbe(Land,Farbe),
    Farbe=blau,
    Wahr=true,!);
    Wahr=false.
gruen(Land,Wahr):-
    (farbe(Land,Farbe),
    Farbe=gruen,
    Wahr=true,!);
    Wahr=false.
farbe("Cera",rot).
farbe("Hora",blau).
farbe("Iona",rot).

nachbar(X,Y):-
    n(X,Y);
    n(Y,X).

farbe(Land,Farbe):- 
    nachbar(Land,Nachbar),
    farbe(Nachbar,Eingefaerbt),
    farben(X),
    Farbe is X,
    Farbe\==Eingefaerbt.


