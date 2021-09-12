% Autor:
% Data: 10/12/2019

% pais(nome, area, populacao).

 pais(brasil, 9, 130).
 pais(china, 12, 1800).
 pais(eua, 9, 230).
 pais(india, 3, 450).
 
 
% func(codigo, nome, salario).

func(1, ana, 100.90).
func(2, bia, 1200.90).
func(3, ivo,903.50).

dep(1, ary).
dep(3, rai).
dep(3, eva).

:- dynamic joga/2.
:- dynamic consult/2.

joga(pele, futebol).
joga(guga, tenis).
desporto(X):-joga(_,X).
atletas(Y):-joga(Y,_).

:-dynamic estou/1. %declara modificacao dinamica

estou(praia).
ando(Destino):-
               retract(estou(Origem)),
               asserta(estou(Destino)),
               format('Ando da ~w ate a ~w', [Origem, Destino]).
               
               
salva(Predicado,Ficheiro):-
                           tell(Ficheiro),
                           listing(Predicado),
                           told.
                           
                           
entrar():-write('entre um numero: '),
        read(Num1),
        Dobro is Num1*Num1,
        format('O dobro de ~w é ~w', [Num1, Dobro]).
        
        
leia:-
    repeat,
    read(N),
    N=5.