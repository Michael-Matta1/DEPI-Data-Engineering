-- Select students enrolled in more than one course
SELECT Students.first_name, Students.last_name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
GROUP BY Students.first_name, Students.last_name
HAVING COUNT(Enrollments.course_id) > 1;


-- Find courses taught by a specific instructor (here i find MR Ahmed Essam courses)
SELECT Courses.course_name
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
WHERE Enrollments.instructor_id = 1
GROUP BY Courses.course_name;

-- Select the top 3 students with the most enrollments
SELECT TOP 3 Students.first_name, Students.last_name, COUNT(Enrollments.course_id) AS number_of_enrollments
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
GROUP BY Students.first_name, Students.last_name
ORDER BY number_of_enrollments DESC;

-- Combine results of students enrolled in more than one course and courses with more than one student enrolled
SELECT 'Student' AS type, Students.first_name, Students.last_name, NULL AS course_name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
GROUP BY Students.first_name, Students.last_name
HAVING COUNT(Enrollments.course_id) > 1
UNION
SELECT 'Course' AS type, NULL AS first_name, NULL AS last_name, Courses.course_name
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_name
HAVING COUNT(Enrollments.student_id) > 1;
