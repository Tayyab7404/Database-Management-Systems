/* Errors when inserting data */

/* course table, unique constraint */
insert into course values('Data Structures', 'CS224', 'CSE');
/*  
insert into course values('Data Structures',
                           *
Error: UNIQUE constraint failed: course.course_name
*/

/* course table, primary key constraint */
insert into course values('DBMS', 'CS214', 'CSE');
/*
insert into course values('DBMS',
                              *
Error: UNIQUE constraint failed: course.course_id
*/

/* student table, NOT NULL constraint */
insert into student values(NULL, 'Y21CS000', 'CS221', 'Sem4');
/*
insert into student values(NULL,
                            *
Error: NOT NULL constraint failed: student.name
*/

/* student table, PRIMARY KEY constraint */
insert into student values('Neeraj', 'Y21CS172', 'CS222', 'Sem4');
/*
insert into student values('Neeraj',
                             *
Error: UNIQUE constraint failed: student.id
*/

/* student table, foreign key constraint */
insert into student values('Shreyas', 'Y21CS164', 'CS232', 'Sem5');
/*
insert into student values('Shreyas',
*
Error: FOREIGN KEY constraint failed
*/

/* grade table, check constraint */
insert into grade values('Y21CS164', 'Sem5', 'CS222', 12);
/*
insert into grade values('Y21CS164',
*
Error: CHECK constraint failed: grade >= 5 and grade <= 10
*/
