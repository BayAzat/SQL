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
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select roles.role_name, employees.employee_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select roles.role_name, salary.monthly_salary from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Java_dev%';

-- 16. ������� �������� Python �������������
-- 17. ������� ����� � �������� Junior Python �������������
-- 18. ������� ����� � �������� Middle JS �������������
-- 19. ������� ����� � �������� Senior Java �������������
-- 20. ������� �������� Junior QA ���������
-- 21. ������� ������� �������� ���� Junior ������������
-- 22. ������� ����� ������� JS �������������
-- 23. ������� ����������� �� QA ���������
-- 24. ������� ������������ �� QA ���������
-- 25. ������� ���������� QA ���������
-- 26. ������� ���������� Middle ������������.
-- 27. ������� ���������� �������������
-- 28. ������� ���� (�����) �������� �������������.
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000