use todos;
select users.nick_name, todos.todo_name, todos.created_time, todos.done
from todos
inner join users on users.id=todos.user_id;