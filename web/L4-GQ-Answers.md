# MariaDB Activity 2
**Name:** C. Romeo Del Castillo III, Hannah Gan
**Student ID:** 24-4867-479, 24-1733-396
**Course/Section:** CIT17-3H
## Database
`school`
## Tables
- `students`
- `courses`
- `enrolments`
## What I Learned
- In this activity, we learned how to relate tables to one another using foreign keys, how to view and consolidate data from across tables using joins, and how to sort and group entries in tables using SQL queries.
## Guide Questions
1. What is a primary key?
 - A primary key is a unique identifier for each entry in an SQL table.
2. What is a foreign key?
 - A foreign key is a reference to a primary key in another table.
3. Why is the `enrolments` table necessary?
 - The table describing `enrolments` was necessary as it would not be sufficient nor useful to limit enrolment data into a single column on either the `courses` or `students` table. Furthermore enrolments themselves, in the real world, are entities themselves with their own attributes separate from any of the entities related to it.
4. What is the purpose of the `JOIN` statement?
 - The `JOIN` statement allows consolidation of data from across tables.
5. What is the difference between `WHERE` and `ORDER BY` ?
 - `WHERE` filters results by a specific parameter, whilst `ORDER BY` sorts results by a specific column or formula.
6. What does `GROUP BY` do?
 - `GROUP BY` aggregates results according to specific parameters.
7. What does `COUNT()` do?
 - `COUNT()` returns the count of entries matching certain criteria.
8. What happens if you try to insert an enrolment using a `student_id` that does not exist?
 - The insertion would fail as the `student_id` column is linked by a foreign key constraint to `students.id`.
9. Why is database normalisation important?
 - Database normalisation is important as this helps ensure the organisation, integrity, and cross-referrability of the data.
10. What did you learn from this activity?
 - In this activity, We learned how to relate tables to one another using foreign keys, how to view and consolidate data from across tables using joins, and how to sort and group entries in tables using SQL queries. 