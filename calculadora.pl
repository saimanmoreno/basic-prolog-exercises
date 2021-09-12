% Autor:
% Data: 07/11/2019

operador(Op,Num1,Num2,Result):-Op=='+',Result is Num1+Num2.
operador(Op,Num1,Num2,Result):-Op=='*',Result is Num1*Num2.
operador(Op,Num1,Num2,Result):-Op=='-',Result is Num1-Num2.
operador(Op,Num1,Num2,Result):-Op=='/',Result is Num1/Num2.

calculador():-write('entre com com sinal de operacao: '),read(Op),
              write('entre com primeiro numeru: '),read(Num1),
              write('entre com segundo numeru: '),read(Num2),
              operador(Op,Num1,Num2,Result),
              write('O resultado e: '),write(Result).

