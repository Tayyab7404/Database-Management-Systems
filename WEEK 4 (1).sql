/*
WEEK 4:
Write SQL Select Statements using Aggregate Functions, Group By and Having clauses for the following queries that retrieve data from university database:

1. Find the maximum and average capacity of buildings in the university.
*/
select building, avg(capacity) as "Average Capacity", max(capacity) as "Maximum Capacity" from classroom group by building;

/*
2. Display the least budget of the departments.
*/
select min(budget) as Least_Budget from department group by dept_name;

/*
3. Find the total number of courses and credits offered by Biology department.
*/
select count(course_id) as "Total Courses", sum(credits) as "Total Credits" from course where dept_name like 'Biology';

/*
4. Find the average salary of instructors in the Computer Science department.
*/
select avg(salary) as "Average Salary" from instructor where dept_name like 'Comp. Sci.';

/*
5. Find the total number of instructors who teach a course in the Spring 2010 semester.
*/
select count(distinct(id)) as "Total Instructors" from teaches where semester like 'Spring' and year like 2010;

/*
6. Find the average salary in each department.
*/
select dept_name, avg(salary) as "Average Salary" from instructor group by dept_name;

/*
7. Find the number of instructors in each department who teach a course in the Spring 2010 semester.
*/
select i.dept_name, count(distinct(t.id)) as "Total Instructors" from instructor i, teaches t where semester like 'Spring' and year like 2010 and i.id = t.id group by i.dept_name;

/*
8. Find the department name and average salary of the department for only  those departments where the average salary of the instructors is more than $42,000.
*/
select dept_name, avg(salary) as "Average Salary" from instructor where salary > 42000 group by dept_name;

/*
9. For each course section offered in 2009, find the average total credits (tot_cred) of all students enrolled in the section, if the section had at least 2 students.
*/


/*
10. For each department, find the maximum salary of instructors in that department. You may assume that every department has at least one instructor.
*/
select dept_name, max(salary) as "Maximum Salary" from instructor group by dept_name;

/*
11.	For the student with ID 12345 (or any other value), show the total number of credits scored for all courses (taken by that student). Don't display the tot_creds value from the student table, you should use SQL aggregation on courses taken by the student.
*/
select t.sec_id as "Section ID", avg(tot_cred) as "Average Credits" from takes t, student s where t.id = s.id and year = 2009 group by t.sec_id having count(t.sec_id) > 1;

/*
12.	Display the total credits for each of the students, along with the ID of the student; don't bother about the name of the student. (Don't display the tot_creds value from the student table, you should use SQL aggregation on courses taken by the student. For students who have not registered for any course, tot_creds should be 0)
*/
select s.id as "Student ID", sum(credits) as "Total Credits" from student s, course c, takes t where t.id = s.id and c.course_id = t.course_id group by s.id;