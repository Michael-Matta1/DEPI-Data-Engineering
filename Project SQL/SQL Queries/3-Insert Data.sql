-- Inserting sample data for Students
INSERT INTO Students (first_name, last_name, email, date_of_birth)
VALUES
  ('Michael', 'Matta', 'michaelj@example.com', '2001-12-10'),
  ('Ahmed', 'idk', 'ahmed@example.com', '2001-12-11'),
  ('Mohamed', 'idk2', 'mohamed@example.com', '2001-12-12'),
  ('Mostafa', 'idk3', 'mostafa@example.com', '2001-12-12'),
  ('Marawan', 'idk4', 'marawan@example.com', '2001-12-13'),
  ('Kerolos', 'idk5', 'kerolos@example.com', '2001-12-14'),
  ('Omar', 'idk6', 'omar@example.com', '2001-12-15'),
  ('Salah', 'idk7', 'salah@example.com', '2001-12-16'),
  ('Foad', 'idk8', 'foad@example.com', '2001-12-17'),
  ('Youssef', 'idk9', 'youssef@example.com', '2001-12-18'),
  ('Zayn', 'idk10', 'zayn@example.com', '2001-12-19');

-- Inserting sample data for Courses
INSERT INTO Courses (course_name, course_description)
VALUES
  ('Mathematics', 'An introductory course on Mathematics'),
  ('Physics', 'Basic principles of Physics'),
  ('Computer Science', 'Fundamentals of Computer Science'),
  ('Web Development', 'Building interactive websites'),
  ('Data Analysis', 'Extracting insights from data');

-- Inserting sample data for Instructors
INSERT INTO Instructors (first_name, last_name, email)
VALUES
  ('Ahmed', 'Essam Azab', 'ahmed.azab@example.com'),
  ('idk1', 'idk4', 'alicebrown@example.com'),
  ('idk2', 'idk3', 'bobwhite@example.com');
  

-- Inserting sample data for Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES
  (1, 1, '2024-01-01'),
  (2, 2, '2024-01-02'),
  (3, 3, '2024-01-03'),
  (4, 4, '2024-01-04'),
  (5, 1, '2024-01-05'),
  (3, 2, '2024-01-06'),
  (6, 3, '2024-01-07'),
  (7, 4, '2024-01-08'),
  (8, 5, '2024-01-09'),
  (9, 1, '2024-01-10'),
  (10, 2, '2024-01-11'),
  (2, 3, '2024-01-12'),
  (5, 4, '2024-01-13'),
  (4, 5, '2024-01-14'),
  (6, 5, '2024-01-15'),
  (1, 1, '2024-01-16'),
  (7, 3, '2024-01-17'),
  (8, 2, '2024-01-18'),
  (9, 4, '2024-01-19'),
  (10, 3, '2024-01-20');
