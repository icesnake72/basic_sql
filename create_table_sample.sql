CREATE DATABASE todos;
SHOW DATABASES;
USE todos;
SHOW TABLES;

CREATE TABLE todos.users(
id int not null auto_increment,
email varchar(255) not null unique,
password varchar(30) not null,
nick_name varchar(20) not null,
primary key(id)
);

CREATE TABLE todos.todos(
ID INT NOT null auto_increment,
name varchar(255) Not null,
done bool not null default false,
created timestamp not null default current_timestamp,
user_id int not null,
primary key (id),
foreign key(user_id) references users(id));

insert into todos.users(email, password, nick_name)
values('icesnake72@gmail.com', '1234', '에스비에스');

insert into todos.todos(name, user_id)
values('도커공부', 1);

