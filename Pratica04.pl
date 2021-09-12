% Pratica 04: Introducao ao prolog
% Autor:  Simao Moreno
% Data: 09/12/2019

genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ann).
genitor(bob, pat).
genitor(pat, jim).

mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).
homen(tom).
homen(bob).
homen(jim).

prole(Y,X) :- genitor(X,Y).
mae(X,Y) :- genitor(X,Y), mulher(X).
avos(X,Z) :- genitor(X,Y), genitor(Y,Z).
irma(X,Y) :- genitor(Z,X), genitor(Z,Y), mulher(X), not(X=Y).
descendente(X,Z) :- genitor(X,Z).
descendente(X,Z) :- genitor(X,Y), descendente(Y,Z).


% 2- familia barros:

progenitorr(jose,joao).
progenitorr(jose,ana).
progenitorr(maria,joao).
progenitorr(maria,ana).
progenitorr(ana,helena).
progenitorr(ana,joana).
progenitorr(joao,mario).
progenitorr(helena,carlos).
progenitorr(mario,carlos).

feminino(ana).
feminino(maria).
feminino(helena).
feminino(joana).

masculino(jose).
masculino(joao).
masculino(mario).
masculino(carlos).

irmaa(X,Y):-progenitorr(Z,X),progenitorr(Z,Y),feminino(X), not(X=Y).
irmaoo(X,Y):-progenitorr(Z,X),progenitorr(Z,Y), masculino(X), not(X=Y).
descendente(X,Y):-progenitorr(X,Y).
descendente(X,Y):-progenitorr(X,Z),descendente(Z,Y).
maee(X,Y):-progenitorr(X,Y),feminino(X).
paii(X,Y):-progenitorr(X,Y),masculino(X).
avoo(X,Y):-progenitorr(X,Z),progenitorr(Z,Y),feminino(X).
tioo(X,Y):-progenitorr(Z,Y),irmaoo(X,Z).
primo(X,Y):-progenitorr(Z,X),progenitorr(W,Y),progenitorr(V,Z),progenitorr(V,W),not(Z=W).
