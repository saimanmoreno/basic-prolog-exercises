% Autor:
% Data: 09/12/2019

leia:-
      repeat,
      write('Entre com numero 5 para sair: '), read(N),
      N=5.
      
pessoa(X,Y):-X=<12,Y="Crianca".
pessoa(X,Y):-X>12,X<18,Y="Adolescente".
pessoa(X,Y):-X>18,X<65,Y="Adulto".
pessoa(X,Y):-X>=65,Y="Idoso".

go:-write('Entre com a idade: '),read(X),pessoa(X,Y),write(Y).

maior(X,Y):-X>Y,write(X).
maior(X,Y):-X<Y,write(Y).
start:-write('Entre com o primeiro numero: '),read(X),
       write('Entre com o segundo numero: '), read(Y),
       maior(X,Y).
       
nota(ana, 14).
nota(rui, 13).
nota(sara, 13).
nota(ze, 16).
nota(jose, 13).
nota(maria, 13).
nota(pestro, 16).
%lista_de_notas(X):-


if(X,Y):-X==1,Y="Um".
if(X,Y):-X\==1,Y="Erro".
nubai:-write('Entre com um numero: '),read(X),if(X,Y),write(Y).

menu:-write('********Menu********'),nl,
write(' 1 - Opção A'),nl,
write(' 2 - Opção B'),nl,
write(' 3 - Opção C').

itemmenu(X,Y):-X==1,Y="Escolheu a opcapo 1".
itemmenu(X,Y):-X==2,Y="Escolheu a opcapo 2".
itemmenu(X,Y):-X==3,Y="Escolheu a opcapo 3".
itemmenu(X,Y):-X==0,Y="Saindo...".
itemmenu(X,Y):-X\==3,X\==2,X\==1,Y="Opcao Invalido".
escolha:-
       repeat,
       menu,nl,nl,
       write('Escolha menu: '),read(X),itemmenu(X,Y),nl,write(Y),nl,nl,
       X==0.

aluno(joao, paradigmas).
aluno(maria, paradigmas).
aluno(joel, lab2).
aluno(joel, estruturas).
frequenta(joao, iSCEE).
frequenta(maria, iSCEE).
frequenta(joel, iniCV).
professor(carlos, paradigmas).
professor(ana_paula, estruturas).
professor(pedro, lab2).
funcionario(pedro, uniCV).
funcionario(ana_paula, piaget).
funcionario(carlos, piaget).



cont:-write("Num "),read(N),
write(1),
Y is 0,
repeat,
Y is Y+1,
write(Y),
N==Y.






