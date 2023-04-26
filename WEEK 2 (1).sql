/* 
WEEK 2:

1. Create course and student tables by adding following constraints on the attributes: 
   a. Primary keys on course_id and student_id attributes. 
   b. Foreign key constraint on course_id attribute of student table.
   c. Unique on course name.
   d. Not null on student_name.
   e. Check constraint on grade attribute of grade table. Grade should be between 5 to 10. 
   f. Set default value for department attribute of course table. 
*/

create table course(course_name varchar(20) UNIQUE,
                    course_id varchar(10) PRIMARY KEY,
                    department varchar(10) DEFAULT 'CSE');

create table student(name varchar(20) NOT NULL,
                     id varchar(10) PRIMARY KEY,
                     course varchar(10),
                     semester varchar(10),
                     FOREIGN KEY(course) REFERENCES course(course_id));
                     
create table grade(id varchar(10),
                   semester varchar(10),
                   course varchar(10),
                   grade int CHECK(grade >= 5 and grade <= 10));

/* Inserting intial data into tables */
insert into course values('Data Structures', 'CS214', 'CSE');
insert into course values('Web Development', 'CS225', 'CSE');

insert into student values('Tayyab', 'Y21CS172', 'CS214', 'Sem3');
insert into student values('Neeraj', 'Y21CS185', 'CS225', 'Sem4'); 

insert into grade values('Y21CS172', 'Sem3', 'CS214', 8);
insert into grade values('Y21CS185', 'Sem4', 'CS225', 10);