--문제1
select count(*) from employees
                   where (select AVG(salary) from employees)>salary;
          
                   
                  
--문제2                                                                
 select department_id,employee_id,last_name, salary
  from employees
  where (department_id,salary) in(select department_id, max(salary) from employees group by department_id)  
   order by salary desc;
   
--문제3
select b.job_title,sum(salary) from employees a,jobs b
         where b.job_id=a.job_id
        group by job_title
        order by sum(salary) desc;
        
--문제4                              
select a.employee_id,a.last_name from employees a,(select department_id,avg(salary)as avg_salary from employees
                                 group by department_id) b
         where b.department_id =a.department_id
        and a.salary > b.avg_salary;
        
        
select department_id,avg(salary)as avg_salary from employees
                                 group by department_id;
         

                            
                        
        
   

                   
                   
