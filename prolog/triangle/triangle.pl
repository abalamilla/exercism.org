triangle(Side1, Side2, Side3, "equilateral") :- 
	is_triangle(Side1, Side2, Side3),
	equilateral(Side1, Side2, Side3), !.
triangle(Side1, Side2, Side3, "isosceles") :- 
	is_triangle(Side1, Side2, Side3),
	isosceles(Side1, Side2, Side3), !.
triangle(Side1, Side2, Side3, "scalene") :- 
	is_triangle(Side1, Side2, Side3),
	scalene(Side1, Side2, Side3), !.

is_triangle(Side1,Side2,Side3) :- 
	no_zero_sides(Side1,Side2,Side3),
	equality(Side1,Side2,Side3).

no_zero_sides(Side1,Side2,Side3) :-
	Side1 > 0,
	Side2 > 0,
	Side3 > 0.

equality(Side1,Side2,Side3) :-
	Side1 + Side2 >= Side3,
	Side1 + Side3 >= Side2, 
	Side2 + Side3 >= Side1.

equilateral(X,X,X).

isosceles(X,X,_).
isosceles(X,_,X).
isosceles(_,X,X).

scalene(X,Y,Z) :-
	X =\= Y,
	X =\= Z,
	Y =\= Z.
