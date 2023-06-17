use students;

select students.name, s.kor, s.eng, s.math, s.total, s.avgs, exam_type.exam_name
from scores s
inner join students on s.stud_id=students.id
inner join exam_type on s.exam_type=exam_type.id;


drop view show_scores;
create view show_scores as
select students.name, s.kor, s.eng, s.math, s.total, round(s.avgs,2) as avg, exam_type.exam_name
from scores s
inner join students on s.stud_id=students.id
inner join exam_type on s.exam_type=exam_type.id
order by avg desc;

create view show_scores_by_kor as
select students.name, s.kor, s.eng, s.math, s.total, round(s.avgs,2) as avg, exam_type.exam_name
from scores s
inner join students on s.stud_id=students.id
inner join exam_type on s.exam_type=exam_type.id
order by s.kor desc;

select * from show_scores;
select * from show_scores_by_kor;

