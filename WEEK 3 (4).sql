/*
WEEK 3:

Write SQL queries for retrieving data from multiple tables using Joins:
*/

/*
1. Find all possible combinations of instructors and the courses they teach.
*/
select i.id, i.name, c.course_id, c.title from instructor i, course c, teaches t where i.id = t.id and t.course_id = c.course_id;

/*
2. Retrieve the names of all instructors, along with their department names and department building name.
*/
select i.name, i.dept_name, d.building from instructor i, department d where i.dept_name = d.dept_name;

/*
3. Find the names of instructors who have taught at least one course.
*/
select distinct i.id, i.name from instructor i, teaches t where i.id = t.id;

/*
4. For the student with ID 12345 (or any other value), show all course_id and title of all courses registered for by the student.
*/
select s.id, c.course_id, c.title from student s, course c, takes t where s.id = '12345' and s.id = t.id and t.course_id = c.course_id;

/*
5. Find instructor names and course identifiers for instructors in the Computer Science department.
*/
select distinct i.name, t.course_id from instructor i, teaches t where i.dept_name like 'Comp. Sci.' and i.id = t.id;

/*
6. For all instructors in the university who have taught some course, find their names and the course ID of all courses they
taught.
*/
select distinct i.name, t.course_id from instructor i, teaches t where i.id = t.id;

/*
7. Find the names of all instructors whose salary is greater than at least one instructor in the Biology department. Or Find
the names of all instructors who earn more than the lowest paid instructor in the Biology department.
*/
select name from instructor where salary > (select min(salary) from instructor where dept_name like 'Biology');

/*
8. Find full details of instructors who teach at least one course.
*/
select distinct i.* from instructor i, teaches t where i.id = t.id;

/*
9. Find the instructor names and the courses they taught for all instructors in the Biology department who have taught some course.
*/
select distinct i.name, c.title from instructor i, course c, teaches t where i.dept_name like 'Biology' and i.id = t.id and t.course_id = c.course_id;


/*
10. Find the set of all courses taught either in Fall 2009 or in Spring 2010, or both.
*/
select course_id from teaches where (semester like 'Fall' and year like 2009) or (semester like 'Spring' and year like 2010);

/*
11. Find all courses taught in the Fall 2009 semester but not in the Spring 2010 semester.
*/
select course_id from teaches where (semester like 'Fall' and year like 2009) and not (semester like 'Spring' and year like 2010);

/*
12. Find the names of all students who have taken any Comp. Sci. course ever. (there should be no duplicate names)
*/
select distinct s.name from student s, takes t, course c where s.id like t.id and t.course_id like c.course_id and c.dept_name like 'Comp. Sci.';

/*
13. Display the IDs of all instructors who have never taught a course. (Don’t write nested query)
*/

(select id from instructor) minus (select id from teaches);