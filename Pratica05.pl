% Pratica 05 - Criacao de fatos, regras e consultas
% Autor: Simao Moreno
% Data: 29/10/2019
% =========================================================

% 1.1 - Base de conehcimento sobre sexo e progenitor

progenitor(abraham,herb).
progenitor(abraham,homer).
progenitor(mona,homer).
progenitor(clancy,marge).
progenitor(clancy,patty).
progenitor(clancy,selma).
progenitor(jackie,marge).
progenitor(jackie,patty).
progenitor(jackie,selma).
progenitor(homer,bart).
progenitor(homer,lisa).
progenitor(homer,maggie).
progenitor(marge,bart).
progenitor(marge,lisa).
progenitor(marge,maggie).
progenitor(selma,ling).

mulher(mona).
mulher(jackie).
mulher(marge).
mulher(patty).
mulher(selma).
mulher(lisa).
mulher(ling).
mulher(maggie).

homen(abraham).
homen(clancy).
homen(herb).
homen(homer).
homen(bart).

pai(X,Y):-progenitor(X,Y),homen(X).
mae(X,Y):-progenitor(X,Y),mulher(X).
filho(X,Y):-progenitor(Y,X),homen(X).
filha(X,Y):-progenitor(Y,X),mulher(X).

irmaos(X,Y):-progenitor(Z,X),progenitor(Z,Y),not(X=Y).
irmao(X,Y):-progenitor(Z,X),progenitor(Z,Y),homen(X),not(X=Y).
irma(X,Y):-progenitor(Z,X),progenitor(Z,Y),mulher(X),not(X=Y).

tia(X,Y):-irma(X,Z),progenitor(Z,Y).
tio(X,Y):-irmao(X,Z),progenitor(Z,Y).

primo(X,Y):-progenitor(Z,X),progenitor(W,Y),irmao(Z,W).
prima(X,Y):-progenitor(Z,X),progenitor(W,Y),irma(Z,W).

avô(X,Y):-progenitor(X,Z),progenitor(Z,Y),mulher(X).
avó(X,Y):-progenitor(X,Z),progenitor(Z,Y),homen(X).