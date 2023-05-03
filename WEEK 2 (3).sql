/* Update Statement Constraint Violation */

/* course table, unique constraint */
update course set course_name='Python programming' where course_id='CS222';
/*
UPDATE course SET course_name='Python programming' WHERE course_id='CS222'
*
ERROR at line 4:
ORA-00001: unique constraint (ROSHAN.SYS_C008264) violated
*/

/* course table, primary key constraint */
update course set course_id='CS125' where course_name='DBMS';
/*
UPDATE course SET course_id='CS125' WHERE course_name='DBMS'
*
ERROR at line 13:
ORA-00001: unique constraint (ROSHAN.SYS_C008263) violated
*/

/* student table, NOT NULL constraint */
update student set name=NULL where id='Y21CS160';
/*
UPDATE student SET name=NULL WHERE id='Y21CS160'
                   *
ERROR at line 22:
ORA-01407: cannot update ("ROSHAN"."STUDENT"."NAME") to NULL
*/

/* student table, PRIMARY KEY constraint */
update student set id='Y21CS169' where name='Roshan Ali';
/*
UPDATE student SET id='Y21CS169' WHERE name='Roshan Ali'
*
ERROR at line 31:
ORA-00001: unique constraint (ROSHAN.SYS_C008266) violated
*/


/* student table, FOREIGN KEY constraint */
update student set course='CS232' where id='Y21CS169';
/*
UPDATE student SET course='CS232' WHERE id='Y21CS169'
*
ERROR at line 41:
ORA-02291: integrity constraint (ROSHAN.SYS_C008267) violated - parent key not found
*/

/* grade table, CHECK constraint */
update grade set grade=2 where id='Y21CS160';
/*
UPDATE grade SET grade=2 WHERE id='Y21CS160'
*
ERROR at line 50:
ORA-02290: check constraint (ROSHAN.SYS_C008268) violated
*/
