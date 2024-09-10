# Student Course Management Project

## Project Overview
This project involves creating a database to manage student courses, enrollments, and instructors. The SQL queries cover essential tasks such as selection, filtering, aggregation, joins, subqueries, functions, and stored procedures. The project is done using SQL Server Management Studio 20.

## Database Setup
The database is named `StudentCourseManagement`, and it consists of four primary tables:

1. **Students**
   - `student_id`: Primary Key, INT, AUTO_INCREMENT
   - `first_name`: VARCHAR(100)
   - `last_name`: VARCHAR(100)
   - `email`: VARCHAR(255)
   - `date_of_birth`: DATE

2. **Courses**
   - `course_id`: Primary Key, INT, AUTO_INCREMENT
   - `course_name`: VARCHAR(255)
   - `course_description`: TEXT

3. **Instructors**
   - `instructor_id`: Primary Key, INT, AUTO_INCREMENT
   - `first_name`: VARCHAR(100)
   - `last_name`: VARCHAR(100)
   - `email`: VARCHAR(255)

4. **Enrollments**
   - `enrollment_id`: Primary Key, INT, AUTO_INCREMENT
   - `student_id`: Foreign Key, INT
   - `course_id`: Foreign Key, INT
   - `instructor_id`: Foreign Key, INT
   - `enrollment_date`: DATE

## Key Features

### 1. Basic Queries
- Select all students, courses, and enrollments with student names and course names.
- Filter students enrolled in specific courses and courses with more than 5 students.

### 2. Advanced Queries
- Update student data.
- Delete courses with no enrolled students.
- Calculate average age of students.
- List courses with the maximum enrollments.

### 3. Join Queries
- Display all students with their enrolled courses.
- List instructors and their courses.
- Find students not enrolled in any course.

### 4. Subqueries and Set Operations
- Find students enrolled in more than one course.
- List top 3 students with the most enrollments.
- Combine results from different queries using UNION.

### 5. Functions and Stored Procedures
- A stored procedure to add a new student.
- A function to calculate student age based on the date of birth.

### 6. Aggregate Functions and Grouping
- Calculate the total number of students.
- Calculate average, minimum, and maximum enrollments per course.

### 7. Additional Tasks
- Create aliases for complex column names for simplicity (e.g., `Students.first_name` as `SFN`).
- Categorize students by birth date using CASE.
- Use EXISTS to find courses with at least one enrolled student.

## Sample Data
The project includes sample data:
- 10 students
- 5 courses
- 3 instructors
- 15 enrollments

## How to Use
1. Create the database by 
```sql
CREATE DATABASE StudentCourseManagement;
GO
```
2. Run the provided queries to explore different tasks.
3. Modify queries and procedures for further customizations or tasks.

## Project Summary
This project allows students to practice a wide range of SQL concepts, including joins, subqueries, functions, stored procedures, and aggregate operations. It offers a real-world scenario for managing courses and enrollments in a university database system.

