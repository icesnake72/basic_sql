-- view의 생성
use todos;
create view users_todo as
select users.nick_name, todos.todo_name, todos.created_time, todos.done
where users.id=todos.user_id;

