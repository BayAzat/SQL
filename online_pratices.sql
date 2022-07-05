select * from students;

select * from students
where name like '%Anna%';

select * from students
where id!=118 ;

select * from students
where id<>118;

select * from students
where created_on between '2021-09-01 00:00:00.000' and '2021-11-01 00:00:00.000';

select * from students
where created_on between '2021-10-01 00:00:00.000' and '2021-11-01 00:00:00.000';

select count(name) from students where name like'%Anna%'

select count(*) from students
where date_part('year', created_on)=2020;

select * from students
order by id desc;

select * from students
where name like '%Anna%'or name like '%Donald%'
order by id desc;

select * from students
where name not like '%Anna%';

select * from students
where email like '%8%';

select * from students
where name similar to '(F|S|B)%';

select count(*) from students;

select count(name) from students
where name like '%Anna%';

select * from students
where name  like '%Anna%' or name like '%8%';

select * from students
where password='1m313' or password='332f2' or password='ev44ff';

select * from students
where password in ('1m313','332f2','ev44ff');

select * from students
where password!='1m313';

select * from students
order by id desc;

select * from students
where email like '%8%';

select * from students
where created_on >= '2021-10-01';
