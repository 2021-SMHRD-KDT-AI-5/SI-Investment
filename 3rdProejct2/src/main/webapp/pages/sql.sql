drop table member_table

create table member_table
(name varchar2(20)NOT NULL,
email varchar2(50)NOT NULL,
pw varchar2(50)NOT NULL,
tel varchar2(50),
constraint member_table_id_pk primary key(email)
);

select * from member_table;

insert into member_table values ('aaa','aaa@aaa.com','1111','010-1111-1111');
insert into member_table values('bbb','bbb@bbb.com','2222','010-2222-2222');
insert into member_table values('ccc','ccc@ccc.com','3333','010-3333-3333');
insert into member_table values('ddd','ddd@ddd.com','4444','010-4444-4444');