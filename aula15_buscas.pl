% Autor:
% Data: 23/01/2020

% busca em profundidade ===============================================

s(a,b). s(a,c).
s(b,d). s(b,e).
s(c,f). s(c,g).
s(d,h).
s(e,i). s(e,j).
s(f,k).

objetivo(j). objetivo(f).

b_prof(N,[N]):-objetivo(N).
b_prof(N,[N|Sol1]):- s(N,N1),
                     b_prof(N1,Sol1).

% busca em profundidade com limite =====================================

b_limite(No,[No],_):-objetivo(No).
b_limite(No,[No|Sol],Prof_max):- Prof_max>0,
                                 s(No,No1),
                                 Max1 is Prof_max - 1,
                                 b_limite(No1,Sol,Max1).
                                 

% busca largura =========================================================

resolve_largura(Inicio,Solucao):-busca_largura([Inicio],Solucao).
busca_largura([[N|Caminho]|_], [N|Caminho]):-
                                             objetivo(N).
                                             
busca_largura([[N|Caminho]|Caminhos],Solucao):-
                                               bogof([[M,N|Caminho],
                                               (s(N,M),not(membro(M,[N|Caminho]))),
                                               NovosCaminhos),
                                               conc(Caminhos, NovosCaminhos, Caminhos1),!,
                                               busca_largura(Caminhos1,Solucao),
                                               busca_largura(Caminhos,Solucao).
                                               
                                               
% busca heuristica

