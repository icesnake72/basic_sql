use students;
SELECT * FROM students;

select *
from students
where students.name = "유재석";

select *
from students
where name like "김%";

select *
from students
where grade >= 5;

select *
from students
order by name;

select *
from students
order by name desc;

insert into students(name, grade, class)
values("송지효", 5, 2);

insert into students(name, grade, class)
values("양세찬", 4, 5);

select * from students;

select grade, count(*) from students
group by grade;


select * from students
where grade between 5 and 6;

select * from students
where grade >= 5 and grade <=6;

select * from students
where grade=5 and grade=6;

select * from students
where grade in (5, 6);

select * from students
where grade in (select grade from students where grade<=5);

-- table간의 join
select students.name,
		scores.kor,
        scores.eng,
        scores.math
from students, scores
where students.id = scores.stud_id;   -- 전통적인 방식의 join

select students.name,
		s.kor,
        s.eng,
        s.math,
        exam_type.exam_name
from scores s
inner join students on students.id=s.stud_id
inner join exam_type on exam_type.id=s.exam_type;

-- data 무결성
use students;
insert into scores(stud_id, kor, eng, math, exam_type)
values(1, 100, 100, 100, 2);

