-- drop programmes table
DROP TABLE IF EXISTS programmes;

-- extra students
INSERT INTO students VALUES
(6, "Alexander Hamilton", "BSIT", 3),
(7, "Aaron Burr", "BSCS", 3);

-- extra courses
INSERT INTO courses VALUES
(3513, "Introductory French", "An introductory course on the French language and on French, French American, and French African cultures", 3),
(3514, "Introductory Spanish", "An introductory course on the Spanish language and on Spanish, Latin American, and Latin African cultures", 3);

-- create enrolments
CREATE TABLE enrolments(
    enrolment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrolment_date DATE);

-- add foreign keys
ALTER TABLE enrolments ADD CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(id);
ALTER TABLE enrolments ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id);

-- insert into enrolments
INSERT INTO enrolments (student_id, course_id, enrolment_date) VALUES
(1, 5601, '2026-10-07'),
(1, 5600, '2026-10-07'),
(2, 5600, '2026-10-07'),
(2, 5601, '2026-10-07'),
(4, 5600, '2026-10-07'),
(4, 5601, '2026-10-07'),
(4, 7900, '2026-10-07'),
(5, 7900, '1970-01-02'),
(4, 3513, '2026-10-07'),
(5, 3514, '1986-02-25'),
(6, 3513, '2026-10-07'),
(7, 3513, '2026-10-07');

-- show student-enrolments
SELECT students.name, courses.course_name, enrolments.enrolment_date
FROM enrolments
JOIN students ON enrolments.student_id = students.id
JOIN courses ON enrolments.course_id = courses.course_id;

-- show enrolled in Linguistics course
SELECT students.name, courses.course_name, enrolments.enrolment_date
FROM enrolments
JOIN students ON enrolments.student_id = students.id
JOIN courses ON enrolments.course_id = courses.course_id
    WHERE courses.course_name = 'Introduction to Linguistics';

-- show student-enrolments sorted alphabetically
SELECT students.name, courses.course_name, enrolments.enrolment_date
FROM enrolments
JOIN students ON enrolments.student_id = students.id
JOIN courses ON enrolments.course_id = courses.course_id
    ORDER BY students.name ASC;

-- show totals of students and enrolments
SELECT COUNT(*) AS total_students from students;
SELECT COUNT(*) as total_enrolments from enrolments;

-- courses with the most students
SELECT courses.course_name, count(enrolments.student_id)AS number_of_students
FROM courses
LEFT JOIN enrolments ON courses.course_id = enrolments.course_id
    GROUP BY courses.course_id, courses.course_name;
    ORDER BY number_of_students DESC;

-- complete student report
SELECT
 students.id AS student_id,
 students.name AS student_name,
 courses.course_name,
 enrolments.enrolment_date
FROM enrolments
JOIN students
 ON enrolments.student_id = students.id
JOIN courses
 ON enrolments.course_id = courses.course_id
ORDER BY students.name;

-- show all students in French course
select students.id as student_id, students.name as student_name from enrolments join students on enrolments.student_id = students.id where course_id = 3513;