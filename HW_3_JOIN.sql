-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary  from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

select * from employee_salary
join salary on employee_salary.salary_id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary  from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

select * from salary;
select * from employee_salary
where employee_id > 70 and salary_id <= 15;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from employee_salary 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary is NULL;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from employee_salary
left outer join salary on employee_salary.salary_id = salary.id
where employee_salary.employee_id is null and salary.monthly_salary < 2000;


-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary from employee_salary
left outer join employees on employee_salary.employee_id = employees.id
left outer join salary on employee_salary.salary_id = salary.id
where employees.employee_name is not null and salary.monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name  from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%Java%' and  roles.role_name not like '%JavaScript%';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name  from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Manual_QA%';

-- 11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Automation_QA%';

-- 12. ������� ����� � �������� Junior ������������
select roles.role_name, employees.employee_name, salary.monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Junior%';

-- 13. ������� ����� � �������� Middle ������������
select roles.role_name, employees.employee_name, salary.monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select roles.role_name, employees.employee_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select roles.role_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Java_dev%';

-- 16. ������� �������� Python �������������
select roles.role_name, salary.monthly_salary  from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.role_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id 
full outer join salary on employee_salary.salary_id = salary.id 
where roles.role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, salary.monthly_salary, roles.role_name from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior__Python%';

-- 18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, salary.monthly_salary, roles.role_name from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle_JavaScript%';

-- 19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, salary.monthly_salary, roles.role_name from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Senior_Java_developer%';

-- 20. ������� �������� Junior QA ���������
select employees.employee_name, salary.monthly_salary, roles.role_name from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior%' and roles.role_name like '%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
select avg(salary.monthly_salary) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%JavaScript%';

-- 23. ������� ����������� �� QA ���������
select min(salary.monthly_salary) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������
select max(salary.monthly_salary) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%QA%';

-- 25. ������� ���������� QA ���������
select count(roles.role_name) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.
select count(roles.role_name) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle%';

-- 27. ������� ���������� �������������
select count(roles.role_name) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary) from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
full outer join employee_salary on employees.id = employee_salary.employee_id
full outer join salary on employee_salary.salary_id = salary.id
order by salary.monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2300
order by salary.monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary;