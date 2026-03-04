-- Create Database
create database college;
use college;

-- Create student Table
create table student
(
rollno int primary key,
name varchar(30),
marks int not null,
grade varchar(2),
city varchar(20)
);

-- Insert Records
insert into student (rollno,name,marks,grade,city) values 
(101, 'anil', 78, 'C', 'Pune'),
(102, 'bhumika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'dhruv', 96, 'A', 'Delhi'),
(105, 'emanuel', 12, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi');

-- Basic Select Queries
-- Q1: Display all records from the student table.
select * from student;

-- Q2: Display only student names and marks.
select name,marks from student;

-- Q3: Display distinct cities from the student table.
select distinct city from student;

-- WHERE Clause Conditions
-- Q4: Display students who scored more than 80 marks.
select * from student where marks>80;

-- Q5: Display students from Mumbai.
select * from student where city='mumbai';

-- Q6: Display students who scored more than 80 and are from Mumbai.
select * from student where marks>80 and city='mumbai';

-- Q7: Display students whose marks + 10 are greater than 100.
select * from student where marks+10 >100;

-- Q8: Display student who scored exactly 93 marks.
select * from student where marks = 93;

-- Q9: Display students who scored more than 70 OR belong to Mumbai.
select * from student where marks>70 or city='mumbai';

-- BETWEEN, IN, NOT IN
-- Q10: Display students with marks between 80 and 90.
select * from student where marks between 80 and 90;

-- Q11: Display students from Delhi or Mumbai.
select * from student where city in ('delhi','mumbai');

-- Q12: Display students not from Delhi or Mumbai.
select * from student where city not in ('delhi','mumbai');

-- limit Clause
-- Q13: Display only 1 student who scored 93 or more marks.
select * from student where marks >= 93 limit 1;

-- ORDER BY Clause
-- Q14: Display students sorted by city (Ascending).
select * from student order by city ASC;

-- Q15: Display students sorted by marks (Ascending).
select * from student order by marks ASC;

-- Q16: Display top 3 students with highest marks.
select * from student order by marks DESC limit 3;

-- Aggregate Functions
-- Q17: Find the maximum marks scored by any student.
select max(marks) from student;

-- Q18: Count the number of students whose names are present in the table.
select count(name) from student;

-- Q19: Count total number of students.
select count(*) from student;

-- Q20: Find total marks of all students.
select sum(marks) from student;

-- Q21: Find average marks of students.
select avg(marks) from student;

-- Q22: Find lowest marks scored.
select min(marks) from student;

-- Q23: Count numver of students in each city
select city, count(name) from student group by city;

