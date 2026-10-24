
% Simulated Annealing Algorithm using Prolog

% Function values
value(1, 5).
value(2, 8).
value(3, 9).
value(4, 8).
value(5, 5).

% Start the annealing process
anneal(X, Best) :-
    step(X, 5, Best).

% Stop when temperature reaches zero
step(X, 0, X).

% Search for the next state
step(X, T, Best) :-
    T > 0,
    Y is X + 1,
    (
        value(Y, V2),
        value(X, V1)
    ->
        ( V2 > V1 ->
            Next = Y
        ;
            Next = X
        )
    ;
        Next = X
    ),
    T1 is T - 1,
    step(Next, T1, Best).

% Query:
% ?- anneal(1, Best).
