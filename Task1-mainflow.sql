CREATE DATABASE StudentManagement1;

USE StudentManagement1;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(1) CHECK (Gender IN ('M', 'F')),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT CHECK (MathScore BETWEEN 0 AND 100),
    ScienceScore INT CHECK (ScienceScore BETWEEN 0 AND 100),
    EnglishScore INT CHECK (EnglishScore BETWEEN 0 AND 100)
);

INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES 
('Ankit kumar', 'M', 15, 'A', 85, 90, 88),
('Tara', 'F', 16, 'B', 75, 80, 82),
('Viswanathan', 'M', 15, 'A', 92, 89, 95),
('Apsana', 'F', 14, 'C', 60, 70, 65),
('Shubrah', 'M', 16, 'B', 78, 85, 80),
('Aman', 'M', 15, 'A', 90, 88, 92),
('Syed', 'M', 17, 'C', 55, 60, 58),
('Sanya', 'F', 15, 'B', 72, 75, 78),
('Ramu', 'M', 16, 'A', 95, 94, 96),
('Simran', 'F', 14, 'B', 80, 83, 85);

SELECT * FROM Students;

SELECT 
    AVG(MathScore) AS Avg_MathScore, 
    AVG(ScienceScore) AS Avg_ScienceScore, 
    AVG(EnglishScore) AS Avg_EnglishScore
FROM Students;

SELECT Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;

SELECT Gender, AVG(MathScore) AS avg_Math, AVG(ScienceScore) AS avg_Science, AVG(EnglishScore) AS avg_English
FROM Students
GROUP BY Gender;


SELECT Name, MathScore FROM Students WHERE MathScore > 80;


UPDATE Students 
SET Grade = 'A' 
WHERE StudentID = 5;




	
