create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
	values ('emp_01'),
			('emp_02'),
			('emp_03'),
			('emp_04'),
			('emp_05'),
			('emp_06'),
			('emp_07'),
			('emp_08'),
			('emp_09'),
			('emp_10'),
			('emp_11'),
			('emp_12'),
			('emp_13'),
			('emp_14'),
			('emp_15'),
			('emp_16'),
			('emp_17'),
			('emp_18'),
			('emp_19'),
			('emp_20'),
			('emp_21'),
			('emp_22'),
			('emp_23'),
			('emp_24'),
			('emp_25'),
			('emp_26'),
			('emp_27'),
			('emp_28'),
			('emp_29'),
			('emp_30'),
			('emp_31'),
			('emp_32'),
			('emp_33'),
			('emp_34'),
			('emp_35'),
			('emp_36'),
			('emp_37'),
			('emp_38'),
			('emp_39'),
			('emp_40'),
			('emp_41'),
			('emp_42'),
			('emp_43'),
			('emp_44'),
			('emp_45'),
			('emp_46'),
			('emp_47'),
			('emp_48'),
			('emp_49'),
			('emp_50'),
			('emp_51'),
			('emp_52'),
			('emp_53'),
			('emp_54'),
			('emp_55'),
			('emp_56'),
			('emp_57'),
			('emp_58'),
			('emp_59'),
			('emp_60'),
			('emp_61'),
			('emp_62'),
			('emp_63'),
			('emp_64'),
			('emp_65'),
			('emp_66'),
			('emp_67'),
			('emp_68'),
			('emp_69'),
			('emp_70');

select * from employees;

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
	values (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);

select * from salary;

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null);

insert into employee_salary(employee_id, salary_id)
values (100, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(600, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(200, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(700, 15),
		(16, 1),
		(17, 2),
		(18, 3),
		(19, 4),
		(300, 5),
		(21, 6),
		(22, 7),
		(23, 8),
		(24, 9),
		(800, 10),
		(26, 11),
		(27, 12),
		(28, 13),
		(29, 14),
		(400, 15),
		(31, 1),
		(32, 2),
		(33, 3),
		(34, 4),
		(900, 5),
		(36, 6),
		(37, 7),
		(38, 8),
		(99, 9),
		(500, 10);

select * from employee_salary;
			
create table roles(
	id serial primary key,
	role_name int unique not null	
);
		
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
	values ('Junior_Python_developer'),
			('Middle_Python_developer'),
			('Senior_Python_developer'),
			('Junior_Java_developer'),
			('Middle_Java_developer'),
			('Senior_Java_developer'),
			('Junior_JavaScript_developer'),
			('Middle_JavaScript_developer'),
			('Senior_JavaScript_developer'),
			('Junior_Manual_QA_engineer'),
			('Middle_Manual_QA_engineer'),
			('Senior_Manual_QA_engineer'),
			('Project_Manager'),
			('Designer'),
			('HR'),
			('CEO'),
			('Sales_manager'),
			('Junior_Automation_QA_engineer'),
			('Middle_Automation_QA_engineer'),
			('Senior_Automation_QA_engineer');

select * from roles;
drop table roles_employee;
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
	);

insert into roles_employee(employee_id, role_id)
	values (7, 1),
			(20, 2),
			(3, 3),
			(5, 4),
			(23, 5),
			(11, 6),
			(10, 7),
			(22, 8),
			(21, 9),
			(34, 10),
			(6, 11),
			(12, 12),
			(8, 13),
			(17, 14),
			(50, 15),
			(56, 16),
			(68, 17),
			(59, 18),
			(24, 19),
			(67, 20),
			(25, 1),
			(15, 2),
			(4, 3),
			(37, 4),
			(58, 5),
			(29, 6),
			(9, 7),
			(66, 8),
			(43, 9),
			(55, 10),
			(61, 11),
			(28, 12),
			(53, 13),
			(65, 14),
			(39, 15),
			(44, 16),
			(36, 17),
			(32, 18),
			(42, 19),
			(26, 20);

select * from roles_employee;