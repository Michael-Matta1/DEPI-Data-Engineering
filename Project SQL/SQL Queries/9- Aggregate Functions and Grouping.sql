-- Calculate the total number of students
SELECT COUNT(*) AS total_students
FROM Students;

-- Calculate the average, minimum, and maximum number of enrollments per course
SELECT 
    AVG(enrollment_count) AS average_enrollments,
    MIN(enrollment_count) AS minimum_enrollments,
    MAX(enrollment_count) AS maximum_enrollments
FROM (
    SELECT course_id, COUNT(student_id) AS enrollment_count
    FROM Enrollments
    GROUP BY course_id
) AS course_enrollments;
