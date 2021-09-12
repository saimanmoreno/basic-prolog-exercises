% ********************* exerciccio 6
% alunos
%aluno(joao, paradigmas). 
%aluno(maria, paradigmas).
%aluno(joel, lab2). 
%aluno(joel, estruturas).

% k universidd
%frequenta(joao, iscee).
%frequenta(maria, iscee). 
%frequenta(joel, uni-cv). 

% k pussor
%professor(carlos, paradigmas). 
%professor(ana_paula, estruturas). 
%professor(pedro, lab2). 

% k func
%funcionario(pedro, uni-cv). 
%funcionario(ana_paula, piaget). 
%funcionario(carlos, piaget).

%alunoDePussor(X,Y):- professor(Y,Z), aluno(X,Z).
%pessoaDeUniversidade(X,Z,Y):- frequenta(X,Y), funcionario(Z,Y).
%pessoas(Y,X):- frequenta(Y,X); funcionario(Y,X).
%colega(X,Y):- aluno(X,Z), aluno(Y,Z), frequenta(X,W), fequenta(Y,W); funcionario(X,K), funcionario(Y, K).

%colegaAluno(X,Y):- aluno(X,D), aluno(Y, D).
%colegaPussor(X,Y):- funcionario(X,U), funcionario(Y, U).


% ********************* exerciccio 4
%mes():- X==1, Y=  'janeiro'.
%mes():- X == 2,Y = 'fevereiro'.
%mes():- X==12, Y='desenbro'.
%kMes():- write('numero?? : '), 
%		read(Num)
%		mes(X,Y), write('X').




% ********************* exerciccio 2
for(X):- X<35, write(', '+X), Y is X+1, for(Y).
puiNumeroNaEcran():- write('entre com um numero: '), read(Num),
                    for(Num).

%
%de pussor
%for(35):-!.
%for(X):- x<35, write(X), Y is X+1, for(Y).




% ********************* exerciccio 1


%operacao(Op, Num1, Num2, Result):- Op =='a', Result is Num1+Num2.
%operacao(Op, Num1, Num2, Result):- Op =='s', Result is Num1-Num2.
%operacao(Op, Num1, Num2, Result):- Op =='m', Result is Num1*Num2.
%operacao(Op, Num1, Num2, Result):- Op =='d', Result is Num1/Num2.

%calculadora():- write('Menu: nl a => soma nl s => subtracao nl m => multiplicacao nl d => divisao'),
                %write('escolhe uma operacao: '), read(Op),
                %write('entre com o primeiro num: '), read(Num1),
                %write('entre com o segundo num: '), read(Num2),
                %operacao(Op, Num1, Num2, Result),
                %write('o resultado e: '), write(Result).