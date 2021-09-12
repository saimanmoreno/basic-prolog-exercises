% 			exercicio 9
% tp sanguinos
tipoSangue(a).
tipoSangue(b).
tipoSangue(ab).
tipoSangue(o).

% doa
doa(a, a).
doa(a, ab).
doa(b, b).
doa(b, ab).
doa(ab, ab).
doa(o, a).
doa(o, b).
doa(o, ab).
doa(o, o)..

% recebe
recebe(a, a).
recebe(a, o).
recebe(b, b).
recebe(b, o).
recebe(ab, a).
recebe(ab, b).
recebe(ab, ab).
recebe(ab, o).
recebe(o, o).

doaRecebe():- doa(X,Y), recebe(X,y).




%***********************exercicio 8
opcao(X,Y):- X == 1, Y ='A'.
opcao(X,Y):- X == 2, Y ='B'.
opcao(X,Y):- X == 3, Y ='C'.


menu():- write('********Menu********'),
		write('1 - Opção A '),
		write('2 - Opção B '),
		write('3 - Opção C '),
		write('Escolhe uma Opção: '),
		read(op),
		opcao(X,Y), 
		write('Escolheu a '),
		write(Y).

%            exercicio 7
if(1):- write('um').
if(_):- write('erro').



%            exercicio 4
%nota(ana, 14).
%nota(rui, 13).
%nota(sara, 13).
%nota(ze, 16).
%nota(jose, 13).
%nota(maria, 13).
%nota(pestro, 16).

%lista_de_notas():- listing(nota).



%            exercicio 3
%major(A,B):- A>B, write('o maior é: '), write(A).
%major(C,D):- C>D, write('o maior é: '), write(D).
%ler():- write('numero um: '), read(N1),
 %       write('Numero dois: '), read(N2), 
  %      major(N1,N2).
  


%            exercicio 2
%idd(X,Y):- X =< 12, Y = 'Criança'.
%idd(X,Y):- 12< X, X <18, Y = 'Adolescente'.
%idd(X,Y):-  



%            exercicio 1
%sinal(X, Y):- X > 0, Y = 'Positivo'.
%sinal(X, Y):- X is 0, Y = 'Nulo'.
%sinal(X, Y):- X < 0,Y = 'Negativo'.

%numero():- write('entre com um numero: '),read(X), sinal(X,Y), write(Y).
