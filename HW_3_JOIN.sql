-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary  from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

select * from employee_salary
join salary on employee_salary.salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary  from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

select * from salary;
select * from employee_salary
where employee_id > 70 and salary_id <= 15;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from employee_salary 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary is NULL;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from employee_salary
left outer join salary on employee_salary.salary_id = salary.id
where employee_salary.employee_id is null and salary.monthly_salary < 2000;


-- 5. Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary.monthly_salary from employee_salary
left outer join employees on employee_salary.employee_id = employees.id
left outer join salary on employee_salary.salary_id = salary.id
where employees.employee_name is not null and salary.monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name  from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%Java%' and  roles.role_name not like '%JavaScript%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name  from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Manual_QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Automation_QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select roles.role_name, employees.employee_name, salary.monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select roles.role_name, employees.employee_name, salary.monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select roles.role_name, employees.employee_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select roles.role_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Java_dev%';

-- 16. Вывести зарплаты Python разработчиков
-- 17. Вывести имена и зарплаты Junior Python разработчиков
-- 18. Вывести имена и зарплаты Middle JS разработчиков
-- 19. Вывести имена и зарплаты Senior Java разработчиков
-- 20. Вывести зарплаты Junior QA инженеров
-- 21. Вывести среднюю зарплату всех Junior специалистов
-- 22. Вывести сумму зарплат JS разработчиков
-- 23. Вывести минимальную ЗП QA инженеров
-- 24. Вывести максимальную ЗП QA инженеров
-- 25. Вывести количество QA инженеров
-- 26. Вывести количество Middle специалистов.
-- 27. Вывести количество разработчиков
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000