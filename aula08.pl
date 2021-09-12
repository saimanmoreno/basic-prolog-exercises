% Autor:
% Data: 22/01/2020

L = [a,b,c].

% busca
pertence(Elemento,[Elemento|Cauda]).
pertence(Elemento,[Cabeca|Cauda]):-pertence(Elemento,Cauda).

%pesquisa
%pertence(X,[a,b,c]).

%ultimo elemento
ultimo(Elemento, [Elemento]).
ultimo(Elemento, [Cabeca|Cauda]) :- ultimo(Elemento, Cauda).

%pesquisa
%ultimo(X, [a,b,c]).