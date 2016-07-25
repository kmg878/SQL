--inner join


select first_name, department_id from employees;

-- equit join
select a.first_name,d.department_name from employees a, departments d
        where a.department_id=d.department_id;

--theta join

select * from employees a, jobs b 
          where a.salary between b.min_salary and b.max_salary;
--self join          
select a.first_name,b.first_name from employees a,employees b
          where b.employee_id = a.manager_id ;
          
--outter join
select a.first_name as "사원",nvl(b.first_name,'없음') as "매니저" from employees a,employees b
          where b.employee_id (+)= a.manager_id ;

select a.first_name,b.department_name 
                                  from employees a, departments b
                                  where b.department_id(+)=a.department_id;

          
select * from employees;

