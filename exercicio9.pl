
%*********************  exercicio  3*******************
opcao(1):- write('Inserir').
opcao(2):- write('Alterar').
opcao(3):- write('Eliminar').
opcao(4):- !.

menu():- repeat,
        write('******** Menu ********'), nl,
        write('1 - Inserir'), nl,
        write('2 - Alterar'), nl,
        write('3 – Eliminar'), nl,
        write('4 - Sair'), nl,
        write('********************'), nl,
        write('escolha uma opcao: '),         
        read(Op),
        opcao(Op),
        Op==4,!.

%*********************  exercicio  2*******************
entraKuAlgunKz():- write('entre com um nome/ texto: '), read(Txt),
                open('fichero.txt', write, Le),
                write(Le,Txt),
                close(Le).


%*********************  exercicio  1*******************
:-dynamic sala/6.

sala(cp1103, seg, 10, 13, aaa, p).
sala(cp2301, ter, 10, 11, aaa, p).
sala(di011, sab, 12, 10, xxx, p). % com erro
sala(cp3204, dom, 8, 10, zzz, p).
sala(di011, sex, 14, 16, xxx, p).
sala(cp204, sab, 15, 17, zzz, p).
sala(di011, qui, 14, 13, bbb, p). % com erro

muda():- write('entre com num da sala'), read(Num),
        write('entre com dia da sala'), read(Dia),
        write('entre com inicio da sala'), read(Inicio),
        write('entre com Fim da sala'), read(Fim),
        write('entre com Discipl da sala'), read(Discipl),
        write('entre com Tipo da sala'), read(Tp),
        assert(sala(Num, Dia, Inicio, Fim, Discipl, Tp)).

salva(sala, exercicio9.pl):-
       tell(exercicio9.pl),
       listing(sala),
       told.