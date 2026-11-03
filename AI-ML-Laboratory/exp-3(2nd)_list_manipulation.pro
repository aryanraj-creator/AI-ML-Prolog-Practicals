# Aim: To perform append, reverse and search operations on lists.
domains
    integer_list = integer*

predicates
    append_list(integer_list, integer_list, integer_list)
    reverse_list(integer_list, integer_list)
    reverse_helper(integer_list, integer_list, integer_list)
    search(integer, integer_list)

clauses
    append_list([], L, L).
    append_list([H|T], L, [H|R]) :-
        append_list(T, L, R).

    reverse_list(L, R) :-
        reverse_helper(L, [], R).

    reverse_helper([], R, R).
    reverse_helper([H|T], A, R) :-
        reverse_helper(T, [H|A], R).

    search(X, [X|_]).
    search(X, [_|T]) :-
        search(X, T).

goal
    append_list([1,2,3], [4,5], A),
    write("Appended List: ", A), nl,

    reverse_list([1,2,3,4,5], R),
    write("Reversed List: ", R), nl,

    search(3, [1,2,3,4,5]),
    write("Element Found").
