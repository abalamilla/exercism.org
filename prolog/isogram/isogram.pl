distinct([]) :- !.
distinct([' '|T]) :- 
	distinct(T), !.
distinct(['-'|T]) :- 
	distinct(T), !.
distinct([H|T]) :-
	not(member(H, T)),
	distinct(T).

isogram("") :- !.
isogram(Phrase) :- 
	downcase_atom(Phrase, Lowercase),
	atom_chars(Lowercase, X),
	distinct(X).
