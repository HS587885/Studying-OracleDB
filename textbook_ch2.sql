--1. ?? ??? ????, ??, ???, ??? ?????
select employee_id, first_name, last_name, hire_date, salary from employees;
--2. ?? ??? ??? ?? ?? ?????. ? ??? name?? ???. 
select first_name ||' '|| last_name as name from employees;
--3. 50? ?? ??? ?? ??? ?????.
select * from employees where department_id = 50;
--4. 50? ?? ??? ??, ????, ?????? ?????.
select first_name|| ' ' ||last_name as name, department_id, job_id from employees;
--5. ?? ??? ??, ?? ??? 300?? ??? ??? ?????. 
select first_name, last_name, salary + 300 as salary from employees;
--6. ??? 10000?? ? ??? ??? ??? ?????. 
select first_name, last_name, salary from employees where salary > 10000;
--7. ???? ?? ??? ??? ??, ????? ?????.
select first_name||' '||last_name as name, employees.commission_pct as bonus_rate from employees where commission_pct is not null;
--8. 2003?? ??? ??? ??? ??? ??? ??? ?????. (BETWEEN ??? ??)
select first_name||' '||last_name as name, hire_date, salary from employees where hire_date between '13/JAN/01' and '13/DEC/31';
--9. 2003?? ??? ??? ??? ??? ??? ??? ?????. (LIKE ??? ??)
select first_name||' '||last_name as name, hire_date, salary from employees where hire_date LIKE '13-%';
--10. ?? ??? ??? ??? ??? ?? ???? ?? ?? ??? ?????.
select first_name, last_name,salary from employees order by salary desc;
--11. ? ??? 60? ??? ??? ???? ?????.
select first_name, last_name, salary from employees where department_id = 60;
--12. ?????? IT_PROG ???, SA_MAN? ??? ??? ?????? ?????.
select first_name|| ' ' ||last_name as name, job_id from employees WHERE job_id = 'IT_PROG' OR job_id = 'SA_MAN';
--13. Steven King ??? ??? "Steven King ??? ??? 24000?????" ???? ?????.
select first_name||' '||last_name||'사원의 급여는'||salary||'달러입니다' from employees where first_name = 'Steven' and last_name = 'King';
--14. ???(MAN) ??? ???? ??? ??? ?????? ?????.
select first_name|| ' ' ||last_name as name, job_id from employees where job_id	LIKE '%MAN';
--15. ???(MAN) ??? ???? ??? ??? ?????? ????? ???? ?????
select first_name|| ' ' ||last_name as name, job_id from employees where job_id	LIKE '%MAN'  ORDER	BY	job_id;