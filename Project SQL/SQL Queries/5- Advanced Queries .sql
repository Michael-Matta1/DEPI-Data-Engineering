-- Select students who enrolled in a specific course (i choose math)
SELECT Students.first_name, Students.last_name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
WHERE Enrollments.course_id = 1;

-- Select courses with more than 5 students enrolled
SELECT Courses.course_name, COUNT(Enrollments.student_id) AS num_students
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_name
HAVING COUNT(Enrollments.student_id) > 5;

-- Update a student's email
UPDATE Students
SET email = 'neweupdatedmail@updated.com'
WHERE student_id = 1;

-- Delete a course that no students are enrolled in
DELETE FROM Courses
WHERE course_id NOT IN (SELECT DISTINCT Enrollments.course_id FROM Enrollments);

-- Calculate the average age of students (assuming current year is 2024)
SELECT AVG(DATEDIFF(YEAR, date_of_birth, GETDATE())) AS avg_age
FROM Students;

-- Find the course with the maximum enrollments 
SELECT TOP 1 Courses.course_name, COUNT(Enrollments.student_id) AS num_students
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_name
ORDER BY num_students DESC;


-- List courses along with the number of students enrolled
SELECT Courses.course_name, COUNT(Enrollments.student_id) AS num_students
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_name;
