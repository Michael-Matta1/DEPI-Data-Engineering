-- Select all students
SELECT * FROM Students;

-- Select all courses
SELECT * FROM Courses;

-- Select all enrollments with student names and course names
SELECT Enrollments.enrollment_id, Students.first_name, Students.last_name, Courses.course_name, Enrollments.enrollment_date
FROM Enrollments
JOIN Students ON Enrollments.student_id = Students.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id;
