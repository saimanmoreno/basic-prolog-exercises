% Autor:
% Data: 05/11/2019

maior(B,C):-B>C,write('o maior e:'),write(B).
maior(D,H):-D>H,write('o maior e:'),write(D).
ler():-write('Numero 1:'),read(N1),write('Numero 2:'),read(N2),maior(N1,N2).

% 4 lista_de_nota:-listing(nota).