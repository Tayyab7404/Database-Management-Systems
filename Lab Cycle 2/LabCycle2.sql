/* 
Lab Cycle 2:
Write select statements for the following queries using SQL single row functions:

1. Display the department names in the lower case but the initial must be in uppercase. */
select initcap(dname) as "Dept. Name" from dept;

/* 2. Determine the 'ename', 'job', 'sal' rename the title as Job-sal the output must be Job-sal as
SMITH [CLERK] RS.2000 */
select ename || ' [' || job || ']' || ' Rs.' || salary as "Job-sal" from emp;

/* 3. For each department, count the number of times S occurs in department names. */
select dname, length(dname)-length(replace(dname,'S',null)) as "Frequency of S" from dept;

/* 4. Write a query to display the department name which does not contain any employees. */
select dname from dept where deptno not in (select distinct deptno from emp);

/* 5. Write a query to display all employee details where employee was joined in year date wise
1980 and 1990 and 2nd week of every month */
select * from emp where to_char(hiredate, 'YYYY') between 1980 and 1990 and to_char(hiredate, 'W')=2;

/* 6. Write an SQL statement to convert the current date to new date picture ex: MONDAY 10th
June 2005 10:30.00 PM */
select to_char(SYSDATE, 'DAY DDth MONTH HH:MI:SS AM') as "Date-Time" from dual;

/* 7. Write a query to display all employee details who joined last Wednesday of a month and
experience should be greater than 20 months. */
select * from emp where (to_char(hiredate, 'DY')='WED' and to_char(hiredate, 'MM') - to_char(next_day(hiredate, 'WEDNESDAY'), 'MM')=1) and months_between(SYSDATE, hiredate)>20;

/* 8. Write a query to calculate the service of employees rounded to years.*/
select empno, ename, hiredate, floor(months_between(SYSDATE, hiredate)/12) as "Service in Years" from emp;

/* 9. Write a query that will display a list of employees and their salary and the comments as follows:
a. If the salary is more than 1500 then display 'above the target'
b. If the salary is equal to 1500 then display 'on the target'
c. If the salary is less than 1500 then display 'below the target'
*/
select ename, sal,decode(sign(sal-1500), 1, 'above the target',
                                         0, 'on the target',
                                        -1, 'below the target') as "Comments" from emp;

/*10. Display all employee names, employee number, department names & salary grades for all employees who are working in department 30.*/
select e.ename, e.empno, d.dname, e.sal from emp e, dept d where e.deptno=30 and e.deptno=d.deptno;

/* 11. Display the time of day */
select to_char(SYSDATE, 'HH:MI:SS AM') from dual;

/* 12. Find all employees who earn a salary greater than the average salary of their departments. */
select e.* from emp e where e.sal > (select AVG(sal) from emp where deptno=e.deptno group by deptno);

/* 13. Write a query to find the name of the manager and number of sub-ordinates.*/
select e.ename, count(*) as "No.of subs" from emp e, emp m
where e.empno=m.mgr group by e.ename;

/* 14. Write a query to find out the manager having maximum number of sub-ordinates. */
select e.ename, count(*) as subs from emp e, emp m where e.empno=m.mgr group by e.ename having count(*) in (select max(count(*)) from emp e, emp m where e.empno=m.mgr group by e.ename);

/* 15. Write a query to find the top 3 earners */
select ename, sal from emp e where 3>(select count(*) from emp s where e.sal<s.sal);

/* 16. Write a query to find out the employees who have joined before their managers. */
select e.ename as "Employee Name" from emp e where exists (
    select * from emp m where e.mgr=m.empno and e.hiredate < m.hiredate 
);

/* 17. Write a query to find out the year, where most people join in the company displays the year and No. of Employees */
select to_char(hiredate, 'YYYY') as "Hire Year", count(to_char(hiredate, 'YYYY')) as "No of Employees" from emp group by to_char(hiredate,  'YYYY') having count(to_char(hiredate,  'YYYY')) in(select max(count(to_char(hiredate,'YYYY'))) from emp group by to_char(hiredate, 'YYYY'));

/* 18.	Write a query which will return the DAY of the week.(ie. MONDAY), for any date entered in the format: DD.MM.YY */
select to_char(to_date('&dt', 'DD-MM-YYYY'), 'DAY') from dual;
