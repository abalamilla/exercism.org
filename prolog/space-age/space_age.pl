period("Mercury", 0.2408467).
period("Venus", 0.61519726).
period("Earth", 1.0).
period("Mars", 1.8808158).
period("Jupiter", 11.862615).
period("Saturn", 29.447498).
period("Uranus", 84.016846).
period("Neptune", 164.79132).

period_in_seconds("Earth", Output) :-
	Output = 31557600, !.
period_in_seconds(Planet, Output) :-
	period(Planet, Period),
	period_in_seconds("Earth", Earth),
	Output is Period * Earth.

space_age(Planet, AgeSec, Years) :-
	period_in_seconds(Planet, Period),
	Years is AgeSec / Period.
