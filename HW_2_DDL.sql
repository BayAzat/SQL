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
	values (3, 7),
			(1, 4),
			(5, 9),
			(40, 13),
			(23, 4),
			(11, 2),
			(52, 10),
			(15, 13),
			(26, 4),
			(16, 1),
			(33, 7),
			(2, 8),
			(21, 10),
			(24, 9),
			(29, 11),
			(51, 13),
			(67, 15),
			(87, 18),
			(99, 21),
			(55, 19),
			(77, 25),
			(32, 44),
			(54, 56),
			(31, 35),
			(59, 26),
			(73, 28),
			(56, 19),
			(34, 31),
			(38, 32),
			(25, 34),
			(17, 35),
			(47, 37),
			(39, 38),
			(49, 40),
			(50, 39),
			(43, 43),
			(89, 14),
			(71, 46),
			(70, 47),
			(81, 27);

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
	values (7, 12),
			(20, 14),
			(3, 9),
			(5, 13),
			(23, 4),
			(11, 2),
			(10, 12),
			(22, 3),
			(21, 1),
			(34, 14),
			(6, 7),
			(12, 2),
			(8, 15),
			(17, 7),
			(50, 8),
			(56, 9),
			(68, 15),
			(59, 13),
			(24, 4),
			(67, 8),
			(25, 12),
			(15, 7),
			(4, 4),
			(37, 6),
			(58, 8),
			(29, 2),
			(9, 8),
			(66, 5),
			(43, 6),
			(55, 7),
			(61, 3),
			(28, 5),
			(53, 8),
			(65, 7),
			(39, 4),
			(44, 1),
			(36, 4),
			(32, 3),
			(42, 8),
			(26, 1);

select * from roles_employee;