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

create table course(course_name varchar(20) unique,
                    course_id varchar(10) primary key,
                    department varchar(10) default 'CSE');
                    
create table student(name varchar(20) not null,
                     id varchar(10) primary key,
                     course varchar(10),
                     semester varchar(10),
                     foreign key(course) references course(course_id));
                     
create table grade(id varchar(10),
                   semester varchar(10),
                   course varchar(10),
                   grade int check(grade>=5 and grade<=10));

/* Inserting intial data into tables */

insert into course values('Operating Systems', 'CS223', 'CSE');
insert into course values('Web Technologies', 'CS225', 'CSE');

insert into student values('Tayyab', 'Y21CS172', 'CS223', 'Sem4');
insert into student values('Neeraj', 'Y21CS185', 'CS225', 'Sem4'); 

insert into grade values('Y21CS172', 'Sem4', 'CS223', 9);
insert into grade values('Y21CS185', 'Sem4', 'CS225', 10);