-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary  from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

select * from employee_salary
join salary on employee_salary.salary_id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
-- 5. ����� ���� ���������� ���� �� ��������� ��.
-- 6. ������� ���� ���������� � ���������� �� ���������.
-- 7. ������� ����� � ��������� ������ Java �������������.
-- 8. ������� ����� � ��������� ������ Python �������������.
-- 9. ������� ����� � ��������� ���� QA ���������.
-- 10. ������� ����� � ��������� ������ QA ���������.
-- 11. ������� ����� � ��������� ��������������� QA
-- 12. ������� ����� � �������� Junior ������������
-- 13. ������� ����� � �������� Middle ������������
-- 14. ������� ����� � �������� Senior ������������
-- 15. ������� �������� Java �������������
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