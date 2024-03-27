b(ass,10).
b(10,koenig).
b(koenig,dame).
b(dame,9).
b(9,8).
b(8,7).
farbe(karo).
farbe(pik).
farbe(kreuz).
trumpf(herz).

besser(A,B):- b(A,B),!;b(A,C),besser(C,B).

schlaegt(F1,W1,F2,W2):- trumpf(F1), farbe(F2).
schlaegt(F1,W1,F2,W2):- trumpf(F1),trumpf(F2),besser(W1,W2).
schlaegt(F1,W1,F2,W2):- besser(W1,W2).