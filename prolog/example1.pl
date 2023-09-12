food(burger).
food(sandwich). 
food(pizza). 
lunch(sandwich). 
dinner(pizza).


meal(X) :- lunch(X).
meal(Y) :- dinner(Y).