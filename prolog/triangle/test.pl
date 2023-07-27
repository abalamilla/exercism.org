father(e,g).
parent(g,me).
grandfather(X, Y) :- father(X, Z), parent(Z, Y).
