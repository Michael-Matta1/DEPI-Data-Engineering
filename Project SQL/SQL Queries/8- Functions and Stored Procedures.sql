-- Create a stored procedure to add a new student
CREATE PROCEDURE AddNewStudent
    @first_name VARCHAR(100),
    @last_name VARCHAR(100),
    @email VARCHAR(255),
    @date_of_birth DATE
AS
BEGIN
    INSERT INTO Students (first_name, last_name, email, date_of_birth)
    VALUES (@first_name, @last_name, @email, @date_of_birth);
END;
GO

-- Create a function to calculate the age of a student based on their date of birth
CREATE FUNCTION CalculateStudentAge (@date_of_birth DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(YEAR, @date_of_birth, GETDATE()) - 
           CASE 
               WHEN DATEADD(YEAR, DATEDIFF(YEAR, @date_of_birth, GETDATE()), @date_of_birth) > GETDATE() 
               THEN 1 
               ELSE 0 
           END;
END;
GO
 