-- Select all students with their enrolled courses
SELECT Students.first_name, Students.last_name, Courses.course_name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- List all instructors and their courses.

-- I added a new column so we can find a relation to do the query based on it
ALTER TABLE Enrollments
ADD instructor_id INT;

UPDATE Enrollments
SET instructor_id = CASE
    WHEN course_id = 1 THEN 1
    WHEN course_id = 2 THEN 2
    WHEN course_id = 3 THEN 3
    ELSE 1
END;

SELECT Instructors.first_name, Instructors.last_name, Courses.course_name
FROM Instructors
JOIN Enrollments ON Instructors.instructor_id = Enrollments.instructor_id
JOIN Courses ON Enrollments.course_id = Courses.course_id
GROUP BY Instructors.first_name, Instructors.last_name, Courses.course_name;


-- Find students who are not enrolled in any course
SELECT Students.first_name, Students.last_name
FROM Students
LEFT JOIN Enrollments ON Students.student_id = Enrollments.student_id
WHERE Enrollments.student_id IS NULL;
