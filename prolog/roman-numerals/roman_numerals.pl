roman(0, "").
roman(1, "I").
roman(5, "V").
roman(10, "X").
roman(50, "L").
roman(100, "C").
roman(500, "D").
roman(1000, "M").

string_repl(Str, Times, Output) :-
	length(L, Times),
	maplist(=(Str), L),
	Output = L.
/*
 * 2-3 repeat
 * 20 and 30 repeat
 * 200 and 300 repeat
 * 2000 and 3000 repeat
 * */
 get_roman(N, Numeral) :- roman(N, Numeral), !.
 get_roman(N, Numeral) :-
	 between(2, 3, N),
	 roman(1, One),
	 string_repl(One, N, Roman),
	 atomics_to_string(Roman, Numeral), !. 
 get_roman(N, Numeral) :-
	 between(6,8, N),
	 roman(1, One),
	 roman(5, Five),
	 Diff is N - 5,
	 string_repl(One, Diff, Repl),
	 atomics_to_string([Five, Repl], Numeral), !.

convert(N, Numeral) :-
	Units is N mod 10,
	Tens is (N mod 100) - Units,
	Hundreds is (N mod 1000) - Tens - Units,
	Thousands is (N mod 10000) - Hundreds - Tens - Units,
	get_roman(Units, RUnits),
	get_roman(Tens, RTens),
	get_roman(Hundreds, RHundreds),
	get_roman(Thousands, RThousands),
	atomics_to_string([RThousands, RHundreds, RTens, RUnits], "", Numeral).

