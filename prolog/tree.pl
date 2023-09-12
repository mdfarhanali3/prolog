male(x).
male(a).
male(c).
male(l).
male(i).
male(j).
male(k).


female(y).
female(b).
female(p).
female(m).
female(n).
female(s).
female(t).
female(h).
female(d).


marry(x, y).
marry(y, x).
marry(a, d).
marry(d, a).
marry(b, k).
marry(k, b).
marry(c, p).
marry(p, c).

parent(x, a).
parent(x, b).
parent(x, c).
parent(y, a).
parent(y, b).
parent(y, c).
parent(d, l).
parent(d, m).
parent(d, n).
parent(a, l).
parent(a, m).
parent(a, n).
parent(b, s).
parent(b, t).
parent(k, s).
parent(k, t).
parent(c, h).
parent(c, i).
parent(c, j).
parent(p, h).
parent(p, i).
parent(p, j).





husband(X, Y) :- marry(X, Y), male(X).
wife(X, Y) :- marry(X, Y), female(X).
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).
siblings(X, Y) :- father(Z, X), father(Z, Y), X\==Y.
brother(X, Y) :- father(Z, X), father(Z, Y), male(X),  X\==Y.
sister(X, Y) :- mother(Z, X), mother(Z, Y), female(X),  X\==Y.
grandfather(X, Y) :- parent(Z, Y), father(X, Z), X\==Y.
grandmother(X, Y) :- parent(Z, Y), mother(X, Z), X\==Y.
grandchild(X, Y) :- parent(Z, X), parent(Y, Z), X\==Y.
uncle(X, Y) :- father(Z, Y), brother(X, Z), X\==Y.
aunt(X, Y) :- uncle(Z, Y), wife(X, Z), X\==Y.
nephew(X, Y) :- parent(Z, X), brother(Z, Y), male(X), X\==Y.
niece(X, Y) :- parent(Z, X), brother(Z, Y), female(X), X\==Y.
