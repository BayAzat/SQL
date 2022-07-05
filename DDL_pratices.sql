-- Создание таблиц salary, roles, roles_salary

create table salary(
	id serial primary key, --serial имеет свойство автоинкрементация = авто назначение id при добавление новой строки, 
	-- primary key имеет свойства - 1) unique-уникальность, 2) not null
	monthly_salary int not null
);

create table roles(
	id serial primary key,
	role_title varchar (50) unique not null
);

create table roles_salary(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

-- Добавление данных в таблицы salary, roles, roles_salary
insert into salary(monthly_salary)
	values (1000),
	(2020),
	(3500),
	(4100),
	(2010),
	(2200),
	(3100),
	(2222),
	(3250),
	(1950),
	(1000),
	(7000),
	(500),
	(200);

insert into salary(id, monthly_salary)
	values (default, 2325),
			(default, 2333),
			(default, 2125);

insert into roles(role_title)
	values ('QA_Engineer_junior'),
			('QA_Engineer_middle'),
			('QA_Engineer_senior'),
			('QA_Engineer_automation_junior'),
			('QA_Engineer_automation_middle'),
			('QA_Engineer_automation_senior'),
			('dev_java_junior'),
			('dev_java_middle'),
			('dev_java_senior'),
			('dev_python_junior'),
			('dev_python_middle'),
			('dev_python_senior'),
			('manager'),
			('designer'),
			('hr');

insert into roles_salary(id_role, id_salary)
	values (1, 4),
			(2, 3),
			(3, 6),
			(4, 1),
			(5, 2),
			(6, 9),
			(7, 7),
			(8, 10),
			(9, 8),
			(10, 11);
		
-- Внесение изменение в таблицы
-- Добавить в таблицу roles столбец parking
alter table roles 
add column parking int;

-- Переименовать в таблице roles столбец parking в taxi
alter table roles
rename column parking to taxi;

-- Удалить в таблице roles столбец taxi	
alter table roles 
drop column taxi;

-- Меняем тип данных в столбце parking с int на  varchar
alter table roles 
alter column parking type varchar(30) using parking::varchar(30);

-- Меняем тип данных в столбце parking с varchar на  int
alter table roles 
alter column parking type int using parking::integer;

-- Внести изменения в существующие данные в табл (HR на HR_Business_partner)
update roles
set role_title='HR_Business_partner'
where id=15;



select * from roles;


select * from roles 
join roles_salary on roles.id = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id;

select * from roles
join roles_salary on roles.id = roles_salary.id;

select * from roles_salary 
join salary on roles_salary.id_salary = salary.id;