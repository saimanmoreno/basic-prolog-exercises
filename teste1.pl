% Autor:
% Data: 10/12/2019


% 8.4)

multiplo(X,Y):- Y Mod X==0, format('~w � multiplo de ~w', [Y,X]).
multiplo(X,Y):- Y Mod X/==0, format('~w n�o � multiplo de ~w', [Y,X]).

mult():-write('Introduza N1 >> '), read(N1),
      write('Introduza N2 >> '), read(N2),
      multiplo(N1, N2).