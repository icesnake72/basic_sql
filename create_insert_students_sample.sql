create database students;

use students;
create table students (
id int primary key not null auto_increment unique,
name varchar(50) not null,
grade int not null,
class int not null);

create table scores (
id int primary key not null auto_increment unique,
stud_id int not null,
kor int not null,
eng int not null,
math int not null,
foreign key (stud_id) references students(id));

create table exam_type (
id int primary key not null auto_increment unique,
exam_name varchar(100) not null,
exec_date timestamp 
);

alter table scores
add column exam_type int not null,
add constraint fk_exam_type
foreign key (exam_type) references exam_type(id);


insert into students (name, grade, class)
values("유재석", 6, 1);

insert into students (name, grade, class)
values("강호동", 6, 1);

insert into students (name, grade, class)
values("김종국", 6, 1);

SELECT * FROM students.students;

alter table scores
add column total int,
add column avgs float;



