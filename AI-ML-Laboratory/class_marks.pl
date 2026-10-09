```prolog
% ==========================================
% AI/ML Prolog Practical
% Project: Student Marks Management System
% File: class_marks.pl
% ==========================================

% ------------------------------------------
% Student Marks Database
% marks(Student, Marks)
% ------------------------------------------

marks(aryan, 85).
marks(neha, 78).
marks(rohit, 30).
marks(amit, 45).
marks(rahul, 88).


% ------------------------------------------
% 1. Find Topper (Marks >= 85)
% ------------------------------------------

topper(Student) :-
    marks(Student, Marks),
    Marks >= 85.


% ------------------------------------------
% 2. Find Failed Students (Marks <= 35)
% ------------------------------------------

fail(Student) :-
    marks(Student, Marks),
    Marks =< 35.


% ------------------------------------------
% 3. Find Average-Range Students
% Marks between 40 and 70
% ------------------------------------------

average(Student) :-
    marks(Student, Marks),
    Marks >= 40,
    Marks =< 70.


% ------------------------------------------
% 4. Find Passed Students (Marks >= 40)
% ------------------------------------------

passed(Student) :-
    marks(Student, Marks),
    Marks >= 40.


% ------------------------------------------
% 5. Display Student Marks
% ------------------------------------------

student_marks(Student, Marks) :-
    marks(Student, Marks).


% ------------------------------------------
% End of Program
% ------------------------------------------
```
