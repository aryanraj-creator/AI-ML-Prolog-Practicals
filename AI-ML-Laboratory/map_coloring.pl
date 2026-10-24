
% Map Coloring Problem using Prolog

% Available colors
color(red).
color(green).
color(blue).

% Check that two regions have different colors
diff(X, Y) :-
    X \= Y.

% Assign colors to four regions
map(A, B, C, D) :-
    color(A),
    color(B),
    color(C),
    color(D),

    % Adjacent regions must have different colors
    diff(A, B),
    diff(A, C),
    diff(B, C),
    diff(B, D),
    diff(C, D).
