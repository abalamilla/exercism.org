leap(Year) :-
	0 =:= Year mod 4,
	(0 =\= Year mod 100, !;
	0 =:= Year mod 400).
