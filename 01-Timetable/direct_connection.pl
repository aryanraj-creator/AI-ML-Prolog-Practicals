```prolog
% ==========================================
% AI/ML Prolog Practical
% Project: Direct Connection and Route Finding
% File: direct_connection.pl
% ==========================================

% ------------------------------------------
% Road Database
% road(Source, Destination)
% ------------------------------------------

road(delhi, agra).
road(agra, gwalior).
road(gwalior, bhopal).
road(bhopal, jaipur).
road(jaipur, ajmer).


% ------------------------------------------
% Rule 1: Check Direct Connection
% travel(X, Y) is true if a direct road
% exists from X to Y.
% ------------------------------------------

travel(X, Y) :-
    road(X, Y).


% ------------------------------------------
% Rule 2: Check Indirect Connection
% Travel from X to Y through an intermediate
% city Z.
% ------------------------------------------

travel(X, Y) :-
    road(X, Z),
    travel(Z, Y).


% ------------------------------------------
% End of Program
% ------------------------------------------
```
