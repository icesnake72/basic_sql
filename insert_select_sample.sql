-- 테이블 설명
describe todos;
show columns from todos;

-- 데이터베이스 지원 언어 조회 및 설정 
show collation;
alter database todos character set utf8mb4 collate utf8mb4_0900_ai_ci;

-- 테이블에 데이터 삽입하기
insert into todos(name, until)
values('DOCKER배우기', '2023-06-10 10:30:00');

INSERT INTO TODOS(NAME, UNTIL)
VALUES('런닝맨 시청', '2023-10-05 10:00:00');

-- 테이블 내의 모든 데이터 출력하기 
SELECT * FROM TODOS;

-- NAME 필드에 DOCKER가 들어간 레코드 모두 반환하기
SELECT * FROM TODOS where NAME LIKE '%DOCKER%';

-- id가 1인 필드 모두 반환하기 
SELECT * FROM todos where ID=1;

-- until 필드가 2023-07-01 보다 큰 값을 반환하기 
SELECT * FROM todos WHERE until > '2023-07-01';