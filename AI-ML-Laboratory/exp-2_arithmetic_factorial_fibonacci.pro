# Aim: To perform arithmetic operations, calculate factorial and generate Fibonacci series.
domains
    num = integer

predicates
    factorial(num, num)
    fibonacci(num, num)
    fib_series(num, num, num, num)

clauses
    factorial(0, 1).
    factorial(N, F) :-
        N > 0,
        N1 = N - 1,
        factorial(N1, F1),
        F = N * F1.

    fibonacci(0, 0).
    fibonacci(1, 1).
    fibonacci(N, F) :-
        N > 1,
        N1 = N - 1,
        N2 = N - 2,
        fibonacci(N1, F1),
        fibonacci(N2, F2),
        F = F1 + F2.

    fib_series(0, _, _, _).
    fib_series(N, A, B, Result) :-
        N > 0,
        write(A, " "),
        N1 = N - 1,
        C = A + B,
        fib_series(N1, B, C, Result).

goal
    write("Addition: ", 10 + 5), nl,
    write("Subtraction: ", 10 - 5), nl,
    write("Multiplication: ", 10 * 5), nl,
    write("Division: ", 10 / 5), nl,
    factorial(5, F),
    write("Factorial: ", F), nl,
    fibonacci(6, Fib),
    write("Fibonacci: ", Fib).
