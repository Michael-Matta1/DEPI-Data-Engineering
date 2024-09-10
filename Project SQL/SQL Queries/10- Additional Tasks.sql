-- Select all students with aliases for complex column names
SELECT 
    Students.first_name AS SFN,   
    Students.last_name AS SLN,    
    Courses.course_name AS CCN    
FROM 
    Students
JOIN 
    Enrollments ON Students.student_id = Enrollments.student_id
JOIN 
    Courses ON Enrollments.course_id = Courses.course_id;

--Use CASE to categorize students based on their age.
SELECT 
    first_name AS SFN,
    last_name AS SLN,
    date_of_birth,
    CASE 
        WHEN DAY(date_of_birth) <= 10 THEN 'Early birth'
        WHEN DAY(date_of_birth) BETWEEN 11 AND 15 THEN 'Mid birth'
        ELSE 'Late birth'
    END AS birth_category
FROM 
    Students;

-- Use EXISTS to find courses with at least one enrolled student
SELECT course_name
FROM Courses
WHERE EXISTS (
    SELECT course_id
    FROM Enrollments
    WHERE Enrollments.course_id = Courses.course_id
);

--Create comments in SQL for clarity
/*hello world :)
this is a comment
good bye*/


