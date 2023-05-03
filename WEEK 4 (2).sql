/*
WEEK 4:

Write nested queries for answering the following queries that retrieve data from university database:

1. Find the total number of (distinct) students who have taken course sections taught by the instructor with ID 110011
*/
select count(distinct(t.id)) as "Total Students" from takes t, teaches th where th.id = 10101 and t.course_id = th.course_id and t.sec_id = th.sec_id;

/*
2. Find the names of all instructors whose salary is greater than at least one instructor in the Biology department.
*/
select distinct(name) from instructor where salary > some(select salary from instructor where dept_name like 'Biology');

/*
3. Find the department that has the highest average salary.
*/
select dept_name, avg(salary) as "Average Salary" from instructor group by dept_name HAVING avg(salary) >= all(select avg(salary) from instructor group by dept_name);

/*
4. Find all the courses taught in the both the Fall 2009 and Spring 2010 semesters.
*/
select distinct(course_id) from teaches where semester = 'Fall' and year = 2009 and course_id in(select distinct(course_id) from teaches where semester = 'Spring' and year = 2010);

/*
5. Find all the courses taught in the Fall 2009 semester but not in the Spring 2010 semester.
*/
select distinct(course_id) from teaches where semester = 'Fall' and year = 2009 and course_id not in(select distinct(course_id) from teaches where semester = 'Spring' and year = 2010);

/*
6. Find all courses taught in both the Fall 2009 semester and in the Spring 2010 semester. (Write correlated nested Query)
*/
select course_id from teaches t1 where semester = 'Fall' and year = 2009 and exists(select course_id from teaches t2 where semester = 'Spring' and year = 2010 and t1.course_id = t2.course_id);

/*
7. Find all students who have taken all courses offered in the Biology department. (Write Correlated nested Query)
*/
select distinct(s.id) from student s where not exists((select course_id from course where dept_name like 'Biology') minus (select t.course_id from takes t where t.id = s.id));

/*
8. Find all courses that were offered at most once in 2009.
*/
select distinct(course_id) from takes where year = 2009 group by course_id having count(course_id) <= 1;

/*
9. Find all courses that were offered at least twice in 2009.
*/
select distinct(course_id) from takes where year = 2009 group by course_id having count(course_id) >= 2;

/*
10. Find the average instructors salaries of those departments where the average salary is greater than $42000.
*/
select dept_name, avg(salary) as "Average Salary" from instructor group by dept_name having avg(salary) >= 42000;

/*
11. Find the department with the maximum budget.
*/
select dept_name from department where budget = (select max(budget) from department);

/*
12. Find the names of instructors who have not taught any course.
*/


/*
13. Find the IDs and names of all students who have not taken any course offering before Spring 2009.
*/


/*
14. Find the lowest, across all departments, of the per-department maximum salary computed.
*/


/*
15. Display the IDs and names of the instructors who have taught all Comp. Sci. courses.
*/
