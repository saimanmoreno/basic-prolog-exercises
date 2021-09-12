% Autor:
% Data: 29/10/2019

sexo(abraham,masculino).
sexo(clancy,masculino).
sexo(herb,masculino).
sexo(homer,masculino).
sexo(bart,masculino).
sexo(mona,feminino).
sexo(jackie,feminino).
sexo(marge,feminino).
sexo(patty,feminino).
sexo(selma,feminino).
sexo(lisa,feminino).
sexo(maggie,feminino).
sexo(ling,feminino).
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
%mae(X,Y):-progenitor(X,Y),sexo(X,feminino).
%pai(X,Y):-progenitor(X,Y),sexo(X,masculino).
%filho(X,Y):-progenitor(Y,X),sexo(X,masculino).
%filha(X,Y):-progenitor(Y,X),sexo(X,feminino).
%irmaos(X,Y):-progenitor(Z,X),progenitor(Z,Y),X\==Y.
%primo(X,Y):-progenitor(Z,X),progenitor(M,Y),irmaos(Z,M),sexo(X,masculino),X\==Y.
