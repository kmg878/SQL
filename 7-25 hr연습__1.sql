--join

select e.first_name, d.department_id, d.department_name from employees e, departments d
            where e.department_id = d.department_id  --join ����(table �� -1)
            and e.salary>5000;                       --row ���� ����