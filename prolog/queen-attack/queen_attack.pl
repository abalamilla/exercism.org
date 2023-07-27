%! create(+DimTuple)
%
% The create/1 predicate succeeds if the DimTuple contains valid chessboard 
% dimensions, e.g. (0,0) or (2,4).
create((DimX, DimX)) :-
	DimX > 0.

%! attack(+FromTuple, +ToTuple)
%
% The attack/2 predicate succeeds if a queen positioned on ToTuple is 
% vulnerable to an attack by another queen positioned on FromTuple.
attack((X,_),(X,_)) :- !.
attack((_,Y),(_,Y)) :- !.
attack((X1,Y1),(X2,Y2)) :-
	abs(X2-X1) =:= abs(Y2-Y1), !.
