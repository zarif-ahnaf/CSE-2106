DELIMITER $$

CREATE Table Students(
    student_id INT PRIMARY KEY,
    name TEXT,
    department TEXT
) $$

CREATE TABLE Courses(
    course_id INT PRIMARY KEY,
    course_name TEXT,
    department TEXT
) $$

CREATE TABLE Results(
    student_id INT,
    course_id INT,
    marks FLOAT
) $$

DELIMITER $$