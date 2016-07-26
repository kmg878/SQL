select department_id, to_char(avg(salary),'999999')
                     , to_char(sum(salary),'999999')
                     , to_char(max(salary),'999999')
                     , to_char(min(salary),'999999')
                     from employees
                    group by department_id
                    order by department_id;


select department_id, avg(salary)
                     from employees
                  group by department_id
                  having avg(salary)>5000;


--사장님을 뺀 사원들의 부서별 평균 연봉이 5000 이상인 부서와 평균 연봉 출력하기
select department_id, avg(salary)
                     from employees
                     where department_id is not null
                  group by department_id
                  having avg(salary)>5000
                  order by avg(salary) desc;
