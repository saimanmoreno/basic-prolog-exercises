% Autor:
% Data: 05/11/2019

if(X,Z):-X=1,Z="Um".
if(X,Z):-X\==1,Z="Erro".
ler():-write('Entre com um numero'),read(N),if(N,S),write(S).