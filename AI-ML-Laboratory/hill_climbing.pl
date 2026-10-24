
% Hill Climbing Algorithm
% Function: f(X) = -X^2 + 6X

% Function values
value(1, 5).
value(2, 8).
value(3, 9).
value(4, 8).
value(5, 5).

% Start the hill climbing algorithm
hill_climb(X, Best) :-
    climb(X, Best).

% Stop when no better neighboring value exists
climb(X, X) :-
    \+ better(X, _).

% Move to a better neighboring value
climb(X, Best) :-
    better(X, Y),
    climb(Y, Best).

% Check whether the next value is better
better(X, Y) :-
    value(X, V1),
    Y is X + 1,
    value(Y, V2),
    V2 > V1.

%Query
hill_climb(1, Best).
