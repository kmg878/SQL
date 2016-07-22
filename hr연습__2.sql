--문제 1번 
select (first_name || last_name) AS "이름", (email) AS "이메일",(phone_number)AS "전화번호" from employees order by hire_date asc;

--문제 2번
select job_title,max_salary from jobs order by max_salary desc;

--문제 3번
select count(employee_id)from employees where manager_id is  null;

--문제 4번
select job_title from jobs order by job_title desc,  max_salary desc ;

--문제5번
select count(department_id) AS"부서 수" from departments ;

--문제6번
select department_name from departments order by length(department_name) desc;

--문제7번
select count(department_id) from departments where MANAGER_ID is null; 

--문제 8번
select upper(country_name) from countries order by country_name asc;

--문제 9번
select region_name from regions order by region_name asc ;

--문제 10번
select lower(city) from locations order by CITY asc;

