% Autor:
% Data: 31/10/2019

%Programa que faz a soma de dois numeros

soma():-write('entre com um numero:'),read(Num1),
                     write('entre com o segundo numero:'),read(Num2),
                     Soma is Num1 + Num2,
                     write('A soma é : '),
                     write(Soma).