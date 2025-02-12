use practise;

create table student(
s_id int primary key,
s_name varchar(25) not null,
s_department varchar(25) not null
);

insert into student values (1001,"Jayanth","ECE"),(1002,"Praveen","CSE"),(1003,"Logesh","Mech"),(1006,'karthick','Aero'),(1007,"Mahesh","Civil");

select * from student;

drop table vit;

create table VIT(
s_id int primary key,
s_cgpa varchar(5) not null
);

insert into vit values (1001,'7.2'),(1002,'8.6'),(1007,'9.25');

select * from vit;

select * from student cross join vit;

SELECT student.s_id, student.s_name, student.s_department, vit.s_cgpa
FROM student 
INNER JOIN vit 
ON student.s_id = vit.s_id;

SELECT student.s_id, student.s_name, student.s_department, vit.s_cgpa
FROM student 
LEFT JOIN vit 
ON student.s_id = vit.s_id;

SELECT student.s_id, student.s_name, student.s_department, vit.s_cgpa
FROM student
RIGHT JOIN vit ON student.s_id = vit.s_id;

SELECT student.s_id, student.s_name, student.s_department, vit.s_cgpa
FROM student
FULL JOIN vit ON student.s_id = vit.s_id;


show tables;

select * from worker;

select * from title;

select * from worker
INNER JOIN title on worker.WORKER_ID=title.WORKER_REF_ID
where title.worker_title="manager";




