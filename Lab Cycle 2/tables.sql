/* Creating emp and dept tables: */

create table emp(empno number(4),
                 ename varchar(10),
                 job varchar(9),
                 mgr number(4),
                 hiredate date,
                 sal number(7,2),
                 comm number(7,2),
                 deptno number(2));

create table dept(deptno number(2),
                  dname varchar(14),
                  loc varchar(13));

/* Inserting values into emp and dept tables: */

insert into emp values(7369,'SMITH','CLERK',7902,'17-DEC-80',800,null,20);
insert into emp values(7499,'ALLEN','SALESMAN',7698,'20-FEB-81',1600,300,30);
insert into emp values(7521,'WARD','SALESMAN',7698,'22-FEB-81',1250,500,30);
insert into emp values(7566,'JONES','MANAGER',7839,'02-APR-81',2975,null,20);
insert into emp values(7654,'MARTIN','SALESMAN',7698,'28-SEP-81',1250,1400,30);
insert into emp values(7698,'BLAKE','MANAGER',7839,'01-MAY-81',2850,null,30);
insert into emp values(7782,'CLARK','MANAGER',7839,'09-JUN-81',2450,null,10);
insert into emp values(7788,'SCOTT','ANALYST',7566,'19-APR-87',3000,null,20);
insert into emp values(7839,'KING','PRESIDENT',null,'17-NOV-81',5000,null,10);
insert into emp values(7844,'TURNER','SALESMAN',7698,'08-SEP-81',1500,0,30);
insert into emp values(7876,'ADAMS','CLERK',7788,'23-MAY-87',1100,null,20);
insert into emp values(7900,'JAMES','CLERK',7698,'03-DEC-81',950,null,30);
insert into emp values(7902,'FORD','ANALYST',7566,'03-DEC-81',3000,null,20);
insert into emp values(7934,'MILLER','CLERK',7782,'23-JAN-82',1300,null,10);

insert into dept values(10,'ACCOUNTING','NEW YORK');
insert into dept values(20,'RESEARCH','DALLS');
insert into dept values(30,'SALES','CHICAGO');
insert into dept values(40,'OPERARIONS','BOSTON');

/*drop table customers;
drop table orders;
drop table shippings;*/