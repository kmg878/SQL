
--문제1
select a.employee_id ,a.first_name, c.department_name, b.first_name  as "매니저"from employees a,employees b ,departments c
          where b.employee_id (+)= a.manager_id
          and c.department_id (+)=b.department_id;
--문제 2
select a.region_name,b.country_name from regions a,countries b
        where a.region_id =b.REGION_ID
        order by a.region_name ,country_name desc;
        
--문제 3
select c.department_id,c.department_name, b.first_name,d.city,e.country_name
from employees a, employees b, departments c, locations d,countries e
        where b.employee_id (+)=a.manager_id
        and d.location_id (+)=c.location_id
        and e.country_id (+)= d.country_id;
--문제 4
select c.first_name || c.last_name
from job_history a, jobs b ,employees c
          where a.job_id (+)=b.job_id
          and c.employee_id (+)=a.employee_id
          and b.job_title = 'Public Accountant';
          
--문제 5
select a.employee_id,a.first_name,a.last_name,b.department_name 
from employees a,departments b
where b.department_id =a.department_id
and a.first_name=a.first_name 
order by a.first_name asc;
          
--문제 6
select a.first_name,a.employee_id,a.hire_date from employees a,employees b
 where b.employee_id (+)= a.manager_id
 and b.hire_date >a.hire_date; 


