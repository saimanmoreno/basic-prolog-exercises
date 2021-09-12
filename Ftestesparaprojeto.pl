:- dynamic aaa/3.
:- dynamic bbb/2.

geo :- carrega('Ftestesparaprojeto.pl'),
           format('~n*** Memoriza capitais ***~n~n'),
        repeat,
              assertz(aaa(m,bbb(a,s),mmmm)),
          write('continuar: '),read(X),
         R = n,
            !,
         salva(aaa,'Ftestesparaprojeto.pl').

carrega(A) :-
              exists_file(A),
              consult(A)
              ;
              true.
              
salva(P,A) :-
           tell(A),
           listing(P),
           told.