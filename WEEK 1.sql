/* Week 1:*/

/*Create the tables in the database.*/
create table course(course_name varchar(10),
  		    course_id number, 
		    department varchar(10));

create table student(name varchar(20),
		     student_id number,
		     course varchar(10),
		     semester number);

create table grade(id varchar(10),
		   semester number, 
		   course varchar(10),
		   grade number);

/*Alter the course table by adding a new attribute instructor.*/
alter table course add instructor varchar(20);

/*Alter the student table by modifying the datatype of Student_ID.*/
alter table student modify student_id varchar(10);

/*Alter the course table by dropping instructor attribute.*/
alter table course drop column instructor;

/*Show the structure of the grade table.*/
desc grade; /*(or )*/ describe grade;

/*Load the database with data using insert statements.*/
insert into course values("P and S", 211, "CSE");
insert into course values("DMS", 212, "CSE");
insert into course values("CO", 213, "CSE");
insert into course values("DS", 214, "CSE");
insert into course values("OOP", 215, "CSE");

insert into student values("Tayyab", "Y21CS172", "Machine Learning", 3);
insert into student values("Neeraj", "Y21CS185", "Web Development", 3);
insert into student values("Roshan", "Y21CS160", "Cyber Security", 3);
insert into student values("Karthik", "Y21CS169", "Cloud Computing", 3);

insert into grade values('Y21CS172', 3,'P and S', 9);
insert into grade values('Y21CS172', 3, 'DMS', 9);
insert into grade values('Y21CS172', 3,'CO', 7);
insert into grade values('Y21CS172', 3,'DS', 8);
insert into grade values('Y21CS172', 3,'OOP', 9);

/*Retrieve the contents of a table using select statements.*/
select * from course;
select * from student;
select * from grade;

/*Modify the contents of tables using update statements.*/
update course set course_name = 'CS' where course_id = 211;

/*Delete selected records from the tables.*/
delete from student where name = 'Neeraj';

/*Truncate a table.*/
truncate table student;

/*Drop a table.*/
drop table grade;

/*Commit the changes made to the database.*/
commit;
