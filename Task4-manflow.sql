show databases;
use studentmanagement1;
show tables;
create table studentst4(
StudentID int auto_increment primary key,
Name varchar(100) not null,
math_score int check(math_score between 0 and 100),
total_score int
);

insert into studentst4 (Name, math_score, total_score)
values
('Rahul',85,85),
('Sashi',79,79),
('Atul',82,82),
('Shreya',88,88),
('Palak',87,87),
('Rajesh',77,77),
('Aryan',81,81),
('Yash',76,76),
('Prerna',80,80),
('Arjun',75,75);


SELECT 
    StudentID, 
    Name, 
    math_score, 
    total_score, 
    RANK() OVER (ORDER BY total_score DESC) AS student_rank
FROM studentst4;

Select 
	StudentID,
    Name,
    math_score,
    SUM(math_score) over (order by StudentID) as running_total
FROM studentst4;











 