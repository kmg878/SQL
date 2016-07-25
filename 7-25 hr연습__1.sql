--join

select e.first_name, d.department_id, d.department_name from employees e, departments d
            where e.department_id = d.department_id  --join 조건(table 수 -1)
            and e.salary>5000;                       --row 선태 조건