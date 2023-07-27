convert([], _, Accum, Dec) :- Dec is Accum, !.
convert(['0'|T], Count, Accum, Dec) :-
	convert(T, Count - 1, Accum, Dec).
convert(['1'|T], Count, Accum, Dec) :-
	NewAccum is 2^Count + Accum,
	convert(T, Count - 1, NewAccum, Dec).

binary(Str, Dec) :-
	atom_chars(Str, Bin),
	length(Bin, Count),
	convert(Bin, Count - 1, 0, Dec).


