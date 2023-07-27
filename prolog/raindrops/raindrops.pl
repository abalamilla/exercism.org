sounds(3, "Pling").
sounds(5, "Plang").
sounds(7, "Plong").

calculate([], N, "", Output) :-
	atom_string(N, Output), !.
calculate([], _, Accum, Output) :- 
	Output = Accum.
calculate([H|T], N, Accum, Output) :-
	Mod is N mod H,
	sounds(H, Sound),
	concat_message(Mod, Accum, Sound, NewAccum),
	calculate(T, N, NewAccum, Output).

concat_message(0, Msg, Str, Output) :-
	atomics_to_string([Msg, Str], Output), !.
concat_message(_, Msg, _, Output) :-
	Output = Msg.

convert(N, Sounds) :-
	calculate([3, 5, 7], N, "", Sounds), !.
