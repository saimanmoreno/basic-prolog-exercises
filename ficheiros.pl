%dynamic estou/1.

estou(praia).
nsaBai(Destino):- retract(estou(Origem)), 
                asserta(estou(Destino)),
                format('nsaBai de ~w ti ~w',[Origem, Destino]).

salva(Predicado, Ficheiro):-
                            tell(Ficheiro),
                            listing(Predicado),
                            told.
                            