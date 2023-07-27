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
female(betsy).
female(diana).

happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

runs(albert) :- happy(albert).

dances(alice) :- happy(alice), with_albert(alice).

does_alice_dance :- dances(alice), write('When Alice is happy and with Albert she dances').

swims(bob) :- happy(bob).
swims(bob) :- near_water(bob).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
 
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
 
parent(bob, carl).
parent(bob, charlie).
