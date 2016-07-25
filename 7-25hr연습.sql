select Lower('Database System') from dual;

select Upper('Database System') from dual;

select Initcap('database system') from dual;

select concat('data','base') from dual;

select 'data'||'base' from dual;

select substr('database',2,4) from dual;

select length( 'database' ) from dual;

select instr('database','ba') from dual;

select first_name, Lpad(salary ,10,'*') from employees;

select first_name, Rpad(salary ,10,'*') from employees;

select trim('#' from '#### database #####') from dual;

select trim(' ' from '    database       ') from dual;

select ABS(-20000) from dual;

select floor(2.65 )from dual;

select ceil(2.65) from dual;

select power(2,10)from dual;

select trunc(3.145677,2) from dual;

select first_name ,hire_date from employees;

desc employees;

select value FROM nls_session_parameters Where parameter = 'NLS_DATE_FROMAT';

select first_name ,to_char(hire_date,'yyyy-mm-dd pm hh24:mi:ss') from employees;

select FIRST_NAME, to_char(HIRE_DATE, 'yyyy-mm-dd')as "hd" from employees where '2007'<='hd';

select to_char(sysdate,'yyyy-mm-dd hh:mi:ss') from dual;

select to_date('2007-12-10','yyyy-mm-dd')from dual;

select to_date('2007,12,10','yyyy,mm,dd')from dual;

select first_name,to_char( salary, '99,999') from employees;

select first_name,to_char( salary*1.2, '$99,999') from employees;

select first_name,to_char( salary, 'L99,999') from employees;

select to_char( -10000, '99,999MI') from dual;

select to_char( -10000, '99,999PR') from dual;

select to_char( 123, 'RN') from dual;

select to_char(10000, 'S99,999') from dual;

select to_char(-10000, 'S99,999') from dual;

select to_char(1024, 'xxxx') from dual;

select first_name,salary + salary*NVL(commission_pct,0) from employees;

select first_name,salary + salary*NVL2(commission_pct,commission_pct,0) from employees;

select * from employees;

select first_name, job_id,salary, case job_id 
                                    when 'AD_VP' THEN salary *1.1
                                    when 'FI_MGR' then salary *1.5
                                    else salary
                                      end AS"이번달 월급" from employees;
                                      
 select first_name, job_id,salary, case job_id 
                                    when 'AD_VP' THEN salary *1.1
                                    when 'FI_MGR' then salary *1.5
                                    else salary
                                      end, decode(job_id,'AD_VP',salary*1.1,
                                                        'FI_MGR',salary*1.5,salary) from employees;
                                      







