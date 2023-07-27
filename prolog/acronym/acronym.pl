abbreviate(Sentence, Acronym) :-
	upcase_atom(Sentence, Upper),
	split_string(Upper, " -", "_", Words),
	process(Words, "", Acronym).

process([], Accum, Acronym) :- Acronym = Accum, !.
process([""|Words], Accum, Acronym) :- process(Words, Accum, Acronym), !.
process([W|Words], Accum, Acronym) :-
	atom_chars(W, [F|_]),
	string_concat(Accum, F, NewAccum),
	process(Words, NewAccum, Acronym).
