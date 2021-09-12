% Author:
% Date: 28/12/2019

%Menu menu de login inicial
menuinicial:-nl,write('<<<<<<<<<<<<<<<<  LOGIN  >>>>>>>>>>>>>>>>>>>>>>>'),nl,nl,
                write('1 -> Super administrado'),nl,
                write('2 -> Funcionario'),nl,
                write('0 -> Encerrar a sessao').

itemmenuinicial(X):-X==0,nl,write('Saindo...').
itemmenuinicial(X):-X\==2,X\==1,nl,write('Opcao Invalido').

start:-repeat,
       menuinicial,nl,nl,
       write('Escolha menu: '),read(X),itemmenuinicial(X),nl,nl,nl,
       X==0.
       
%funcionario(bi,nome, apelido, data nascimento, endereço, telefone, sexo, emails).
funcionario(111111,jaquintaquero,linguarado,).

%dependente(bi,nome, apelido, data nascimento, endereço, telefone, sexo, emails).

%departamento(bi,nome, nome_diretor, data_de_criaca).

%licenca(bi,n_de_licenca, tipo, data_de_nício, data_fim).