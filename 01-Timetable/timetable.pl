```prolog
% ==========================================
% AI/ML Prolog Practical
% Project: College Timetable Management
% File: timetable.pl
% ==========================================

% ------------------------------------------
% Timetable Database
% timeTable(Day, Time, Subject, Faculty, Room)
% ------------------------------------------

timeTable(monday, '09:00 AM', python, aradhana, room101).
timeTable(monday, '10:00 AM', ai, sharma, room102).

timeTable(tuesday, '09:00 AM', dbms, verma, room103).
timeTable(tuesday, '10:00 AM', python, aradhana, lab1).

timeTable(wednesday, '09:00 AM', ai, sharma, room105).
timeTable(wednesday, '10:00 AM', dbms, raj, room106).


% ------------------------------------------
% 1. Find Faculty Schedule
% faculty_schedule(Faculty, Day, Time, Subject, Room)
% ------------------------------------------

faculty_schedule(Faculty, Day, Time, Subject, Room) :-
    timeTable(Day, Time, Subject, Faculty, Room).


% ------------------------------------------
% 2. Find Faculty Teaching a Subject
% find_faculty(Subject, Faculty)
% ------------------------------------------

find_faculty(Subject, Faculty) :-
    timeTable(_, _, Subject, Faculty, _).


% ------------------------------------------
% 3. Find Classroom Schedule
% class_schedule(Room, Day, Time, Subject, Faculty)
% ------------------------------------------

class_schedule(Room, Day, Time, Subject, Faculty) :-
    timeTable(Day, Time, Subject, Faculty, Room).


% ------------------------------------------
% 4. Display Complete Timetable
% ------------------------------------------

show_timetable(Day, Time, Subject, Faculty, Room) :-
    timeTable(Day, Time, Subject, Faculty, Room).


% ------------------------------------------
% End of Program
% ------------------------------------------
```
