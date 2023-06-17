use students;
DELIMITER $$ 
create procedure calc_total_avgs()
begin
	update scores
    set total = kor + eng + math, 
	avgs = (kor + eng + math) / 3
    where id >= 1 and total is null or total='';
end $$ 
DELIMITER ;


call calc_total_avgs();