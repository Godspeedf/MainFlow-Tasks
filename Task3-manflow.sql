show databases;
use studentmanagement1;
show tables in studentmanagement1;
select * from courses;
use studentmanagement1;
create table StudentsT3(
student_id int auto_increment primary key,
name varchar(50) not null,
math_score int check(math_score between 0 and 100),
science_score int check(science_score between 0 and 100),
english_score int check(english_score between 0 and 100)
);
alter table StudentsT3
add column total_score int generated always as (math_score + science_score + english_score) virtual;
select * from StudentsT3;
insert into StudentsT3(name,math_score,science_score,english_score)
values
('Ankit',85,90,89),
('Thirumalesh',82,88,95),
('Vignesh',88,99,78),
('Viswa',89,98,87);
select * from StudentsT3;

select student_id,name,math_score,science_score,english_score,
(math_score + science_score + english_score) AS total_score
from StudentsT3
order by total_score desc
limit 2;

select avg(math_score) as avg_math_score
from StudentsT3
where math_score > 70;

select avg(total_score) as avg_total_score
from StudentsT3
where total_score between 250 and 300;

select max(math_score) as second_highest_math_score
from StudentsT3
where math_score < (select max(math_score) from StudentsT3);







 