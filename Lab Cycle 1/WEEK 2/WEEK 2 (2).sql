/* INSERT statements constraint violation */

/* course table, UNIQUE constraint */
insert into course values('Operating Systems', 'CS223', 'CSE');
/*  
Error: UNIQUE constraint failed: course.course_id
*/

/* course table, PRIMARY KEY constraint */
insert into course values('DBMS', 'CS223', 'CSE');
/*
Error: UNIQUE constraint failed: course.course_id
*/

/* student table, NOT NULL constraint */
insert into student values(NULL, 'Y21CS000', 'CS221', 'Sem4');
/*
Error: NOT NULL constraint failed: student.name
*/

/* student table, PRIMARY KEY constraint */
insert into student values('Roshan', 'Y21CS172', 'CS222', 'Sem4');
/*
Error: UNIQUE constraint failed: student.id
*/

/* student table, FOREIGN KEY constraint */
insert into student values('Shreyas', 'Y21CS164', 'CS231', 'Sem5');
/*
Error: FOREIGN KEY constraint failed
*/

/* grade table, CHECK constraint */
insert into grade values('Y21CS172', 'Sem4', 'CS225', 12);
/*
Error: CHECK constraint failed: grade>=5 and grade<=10
*/