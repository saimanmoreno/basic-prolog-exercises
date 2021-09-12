% Autor:
% Data: 05/11/2019

sinal(X,Y):-X<0,Y="negativo".
sinal(X,Y):-X>0,Y="positivo".
sinal(X,Y):-X=0,Y="nulo".
ler():-write('Entre com um numero'),read(X),sinal(X,Y),write(Y).
