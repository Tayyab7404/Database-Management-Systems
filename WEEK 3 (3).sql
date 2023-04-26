/*
WEEK 3:

Write SQL Select Statements for the following simple queries that retrieve data from a single table:
*/

/*
1. Find the details of all students.
*/
select * from student;

/*
2. Find the department names of instructors.
*/
select name, dept_name from instructor;

/*
3. Find the names of all the instructors from Biology department.
*/
select name from instructor where dept_name like 'Biology';

/*
4. Find the names of all instructors in the Computer Science department who have salaries greater than $70000.
*/
select name, salary from instructor where dept_name like 'Comp. Sci.' and salary > 70000;

/*
5. Find the names of courses in Computer science department which have 3credits
*/
select title from course where dept_name like 'Comp. Sci.' and credits like 3;

/*
6. Find the names of the instructors, their present salaries and the resulting salaries if they were given a 10% raise.
*/
select name, salary, (salary*1.1) as "Raised Salary" from instructor;

/*
7. Find the names of instructors with salary amounts between $90000 and $100000.
*/
select name, salary from instructor where salary between 90000 and 100000;

/*
8. Find all instructors whose salary is unknown.
*/
select * from instructor where salary is null;

/*
9. Find the names of all departments whose building name includes the substring 'Watson'.
*/
select dept_name, building from department where building like '%Watson%';

/*
10. Find departments whose names contain the string "sci" as a substring, regardless of the case.
*/
select * from department where lower(dept_name) like '%sci%';

/*
11. List the names of all instructors in the Physics department in alphabetic order.
*/
select name from instructor where dept_name like 'Physics' order by name asc;

/*
12. List the entire instructor relation in descending order of salary. If several instructors have the same salary, order them in ascending order by name.
*/
select * from instructor order by salary desc, name asc;