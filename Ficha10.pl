% Autor:
% Data: 28/11/2019

%dynamic/1.

%1
adiciona(X,L,[X|L]).

%2
apaga(X,[X|R],R).
apaga(X,[Y|R1],[Y|R2]):-apaga(X,R1,R2).

%3
menbro(X,[X,_]).
menbro(X,[_,R]):-menbro(X,R).

%4
concatena(X,Y,[X|Y]).