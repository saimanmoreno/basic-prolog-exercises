% Autor:
% Data: 14/11/2019

escreve(Nome):-open('nomes.txt',append,S),write(S,Nome),close(S).
go:-write('Entra o seu: '),read(Nome),escreve(Nome).
