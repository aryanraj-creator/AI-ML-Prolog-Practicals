# Aim: To create a simple Knowledge Base using facts, predicates, clauses and goals.
domains
    name = string

predicates
    student(name)
    course(name)
    enrolled(name, name)

clauses
    student("Aryan").
    student("Rahul").
    student("Aman").

    course("AI").
    course("Python").
    course("Java").

    enrolled("Aryan", "AI").
    enrolled("Rahul", "Python").
    enrolled("Aman", "Java").

goal
    enrolled("Aryan", "AI").
