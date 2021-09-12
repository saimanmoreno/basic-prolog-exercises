% Pratica 07: Base de Dados Dedutivos
% Autor:
% Data: 05/11/2019

%1 - numero é positivo, negativo ou nulo

sinal(X,Y):- X>0, Y = 'positivo'.
sinal(X,Y):- X<0, Y = 'negativo'.
sinal(X,Y):- X==0, Y = 'igual a zero'.

scan(N):- write('entre com um numero: '),
    read(N), sinal(N,S), format('~w é ~w', [N, S]).


%2 - classificar pessoa por idade

idade(X,Y):-X=<12, Y=' és uma crianca'.
idade(X,Y):-X>=12, X=<18, Y=' és um adolescente'.
idade(X,Y):-X>=18, X=<65, Y=' és um adulto'.
idade(X,Y):-X>=65, X>=65, Y=' és um idoso'.

ler():- write('qual é a sua idade: '),
    read(N), idade(N,S), write(S).

%3 - maior de dois numeros.

maior(X,Y):- X>Y, format('O maior é ~w', [X]).
maior(Z,W):- W>Z, format('O maior é ~w', [W]).


testar():- write('Numero 1: '), read(N1),
          write('Numero 2: '), read(N2),
          maior(N1,N2).
          

%listas de notas

nota(ana, 14).
nota(rui, 13).
nota(sara, 13).
nota(ze, 16).
nota(jose, 13).
nota(maria, 13).
nota(pestro, 16).

listas_notas():- listing(nota).


% soma de dois

soma():-write('Numero 1: '), read(N1),
        write('Numero 2: '), read(N2),
        Z is N1 + N2,
        format('A soma de ~w e ~w é ~w', [N1, N2, Z]).
        
        
% 7- simular instrucao if e else

instrucao(X):-X==1, write('um').
instrucao(X):-X>1, X<1, write('erro').

inst():-write('Introduza o valor 1: '),
    read(N1), instrucao(N1).
    
% 8 - Menu

opcao(X):- X>=1, X=<3, format('Escolheu a opcao ~w', [X]).
opcao(X):- X>4, format('Erro'); X<1, format('Erro').

menu():-write('*******Menu******'),
      write('1 - Opcao A  '),
      write('2 - Opcao B  '),
      write('3 - Opcao C  '),
      read(Num1), opcao(Num1).