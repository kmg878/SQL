--���� 1�� 
select (first_name || last_name) AS "�̸�", (email) AS "�̸���",(phone_number)AS "��ȭ��ȣ" from employees order by hire_date asc;

--���� 2��
select job_title,max_salary from jobs order by max_salary desc;

--���� 3��
select count(employee_id)from employees where manager_id is  null;

--���� 4��
select job_title from jobs order by job_title desc,  max_salary desc ;

--����5��
select count(department_id) AS"�μ� ��" from departments ;

--����6��
select department_name from departments order by length(department_name) desc;

--����7��
select count(department_id) from departments where MANAGER_ID is null; 

--���� 8��
select upper(country_name) from countries order by country_name asc;

--���� 9��
select region_name from regions order by region_name asc ;

--���� 10��
select lower(city) from locations order by CITY asc;

