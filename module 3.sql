CREATE DATABASE college;

USE college;

CREATE TABLE students(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(20),
    age INT
);

INSERT INTO students
VALUES
(1,'Mujahid','CSE-AI',21),
(2,'Rohit','CSE',20),
(3,'Javed','ISE',22);

SELECT * FROM students;

UPDATE students
SET age = 22
WHERE id = 1;

DELETE FROM students
WHERE id = 3;