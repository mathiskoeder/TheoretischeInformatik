amplitude([],X):- X=0.
amplitude([],A,I,X):- X is A-I,!.
amplitude([H|T],X):- amplitude(T,H,H,X).
amplitude([H|T],A,I,X):- (H<I,H=I2,A=A2;
     H>A,H=A2,I=I2;
     I=I2,A=A2), amplitude(T,A2,I2,X).
