--문제 1
select employee_id,first_name || last_name ,salary, b.department_name  from employees a, departments b
                                        where b.department_id =a.department_id
                                        and a.hire_date=(select max(hire_date)from employees);
 
 --문제2
 select a.employee_id,a.last_name from employees a,(select department_id,avg(salary)as avg_salary from employees
                                 group by department_id) b
         where b.department_id =a.department_id
        and a.salary > b.avg_salary;
        
--문제3

select department_id,avg(salary) from employees
                                   group by department_id;
                                                                    
select a.department_id,a.employee_id,a.first_name,a.last_name,salary from employees a,(select department_id,avg(salary) as avg_salary from employees
                                   group by department_id) b
         where b.department_id = a.department_id
         and b.avg_salary =(select max(avg(salary)) from employees
                                   group by department_id);
                                   
--문제4

select department_id,avg(salary) from employees
                                   group by department_id;
select max(avg(salary)) from employees group by department_id;

select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id);

select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id);
                                   
select department_name from departments a,(select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id)) b
                                   where b.department_id=a.department_id;
                                   
--문제5
select department_name ,location_id from departments a,(select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id)) b
                                   where b.department_id=a.department_id;
                                   
select a.city from locations a,(select department_name ,location_id from departments a,(select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id)) b
                                   where b.department_id=a.department_id) b
                                   
                                   where b.location_id =a.location_id;
                                   
--문제6
--1
select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id);
                                   

select a.department_id ,a.job_id from employees a, (select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id))b
        where b.department_id =a.department_id;
                     
select job_title from jobs a, (select a.department_id ,a.job_id from employees a, (select department_id,avg(salary) from employees 
                                   group by department_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by department_id))b
        where b.department_id =a.department_id)b
        where b.job_id=a.job_id;
        
--2
 select job_id,avg(salary) from employees 
                                   group by job_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by job_id); 
                                   
 select job_title from jobs a,(select job_id,avg(salary) from employees 
                                   group by job_id
                                   having avg(salary)=(select max(avg(salary)) from employees group by job_id))b
          where b.job_id= a.job_id;

   
  select * from employees;
  
         
         
                                   