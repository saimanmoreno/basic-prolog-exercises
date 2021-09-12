% Autor:
% Data: 05/11/2019

idade(X,Y):-X=<12,Y="Crinca".
idade(X,Y):-X>12,X<18,Y="adolescente".
idade(X,Y):-X=>18,X<65,Y="adulto".
idade(X,Y):-X>12,Y="Idoso".
ler():-write('Entre com idade'),read(N),idade(N,S),write(S).