% Autor:
% Data: 24/10/2019
genitor(pam,bob).
genitor(tom,bob).
genitor(tom,liz).
genitor(bom,ann).
genitor(bob,pat).
genitor(pat,jim).
mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).
homen(tom).
homen(bob).
homen(jim).
prole(Y,X):-genitor(X,Y).
mae(X,Y):-genitor(X,Y),mulher(X).
avos(X,Z):-genitor(X,Y),genitor(Y,Z).
irma(X,Y):-genitor(Z,X),genitor(Y,Z),mulher(X),not(X=Y).
descendente(X,Z):-genitor(X,Z).
descendente(X,Z):-genitor(X,Y),descendente(Y,Z).