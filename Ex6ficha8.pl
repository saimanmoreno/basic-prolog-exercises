% Autor:
% Data: 13/11/2019

%dynamic aluno/2.
%dynamic frequenta/2.
%dynamic professor/2.


aluno(joao,paradigmas).
aluno(maria,paradigmas).
aluno(joel,lab2).
aluno(joel,estruturas).
frequenta(joao,iSCEE).
frequenta(maria,iSCEE).
frequenta(joel,uniCV).
professor(carlos,paradigmas).
professor(ana_paula,estruturas).
professor(pedro,lab2).
funcionario(pedro,uniuV).
funcionario(ana_paula,piaget).
funcionario(carlos,piaget).

%alunos(X,Y):-aluno(X,Y),professor(Y,X).

alunos(X,Y):-aluno(Y,C),professor(X,C).
todaspessoasdauniversidade()