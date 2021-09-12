% Autor:
% Data: 04/12/2019

loves(romeo, juliet).

loves(juliet, romeo) :- loves(romeo, juliet).

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(laura).
female(diana).


happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

runs(albert):-happy(albert).

dance(alice):-happy(alice), with_albert(alice).

does_alice_dance:-dance(alice),
             write('When alice is happy and with albert she dances').
             
             
swims(bob):-happy(bob), near_water(bob).



















