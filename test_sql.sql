show databases;
use todos;
show tables;
select * from todos;

drop table todos;
show tables;
create table todos.todos(
id int not null unique auto_increment,
name varchar(255) not null,
done bool not null default false,
created timestamp not null default current_timestamp,
primary key(id));

show tables;

insert into todos.todos(name)
values('도커공부하기');

select * from todos;

describe todos;

create table todos.user(
id int not null unique auto_increment,
email varchar(255) not null unique,
password varchar(30) not null,
primary key(id));

alter table todos.todos add column user_id int not null;
select * from todos;

describe todos.user;

insert into todos.user (email, password)
values('icesnake', '1234');

select * from todos.user;

select * from todos.todos;

delete from todos.todos where id=1;

alter table todos.todos add foreign key(user_id) references user(id);

show tables;

rename table todos.user to todos.users;

describe todos.users;

describe todos.todos;

select * from users;

insert into todos(name, user_id)
values('도커공부하기', 1);

describe todos;

alter table users add column nick_name varchar(20) not null;

describe users;
select * from users;
update users set nick_name='맨날코딩' where id=1;
update users set nick_name='에스비에스' where id=1;



