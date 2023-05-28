/* UPDATE statements constraint violation */

/* course table, UNIQUE constraint */
update course set course_name='Operating Systems' where course_id='CS225';
/*
Error: UNIQUE constraint failed: course.course_name
*/

/* course table, primary key constraint */
update course set course_id='CS225' where course_name='Operating Systems';
/*
Error: UNIQUE constraint failed: course.course_id
*/

/* student table, NOT NULL constraint */
update student set name=NULL where id='Y21CS172';
/*
Error: NOT NULL constraint failed: student.name
*/

/* student table, PRIMARY KEY constraint */
update student set id='Y21CS185' where name='Tayyab';
/*
Error: UNIQUE constraint failed: student.id
*/

/* student table, FOREIGN KEY constraint */
update student set course='CS221' where id='Y21CS172';
/*
Error: FOREIGN KEY constraint failed
*/

/* grade table, CHECK constraint */
update grade set grade=2 where id='Y21CS185';
/*
Error: CHECK constraint failed: grade>=5 and grade<=10
*/