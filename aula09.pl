% Autor:
% Data: 22/01/2020

%potencia(Base, Expoente, Potancia).
potencia(_,0,1).
potencia(B,N,P):-
                 N>0,
                 M is N-1,
                 potencia(B,M,R),
                 P is B*R.
                 
%fatorial(numero, fatorial).
fatorial(0,1).
fatorial(N,F):-
               N>0,
               M is N-1,
               fatorial(M,R),
               F is N*R.
               
%relacao transitiva ancestral
pai(bianina, jose).
pai(bianina, abel).
pai(jose, simao).
pai(simao, beva).
ancestral(X,Y):-pai(X,Y).
ancestral(X,Y):-pai(X,Z), ancestral(Z,Y).

%relacao transitiva sobre
sobre(b,a).
sobre(d,b).
sobre(d,c).
acima(X,Y):-sobre(X,Y).
acima(X,Y):-sobre(X,Z), acima(Z,Y).