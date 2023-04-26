/* Errors when inserting data */

/* course table, unique constraint */
insert into course values('Data Structures', 'CS224', 'CSE');
/*  
insert into course values('Data Structures',
                           *
ERROR at line 1:
ORA-00001: unique constraint (Y21CS172.SYS_C008264) violated
*/

/* course table, primary key constraint */
insert into course values('DBMS', 'CS214', 'CSE');
/*
insert into course values('DBMS',
                              *
ERROR at line 14:
ORA-00001: unique constraint (Y21CS172.SYS_C008263) violated
*/

/* student table, NOT NULL constraint */
insert into student values(NULL, 'Y21CS000', 'CS221', 'Sem4');
/*
insert into student values(NULL,
                            *
ERROR at line 28:
ORA-01400: cannot insert NULL into ("Y21CS172"."STUDENT"."NAME")
*/

/* student table, PRIMARY KEY constraint */
insert into student values('Neeraj', 'Y21CS172', 'CS222', 'Sem4');
/*
insert into student values('Neeraj',
                             *
ERROR at line 40:
ORA-00001: unique constraint (Y21CS172.SYS_C008266) violated
*/

/* student table, foreign key constraint */
insert into student values('Shreyas', 'Y21CS164', 'CS232', 'Sem5');
/*
insert into student values('Shreyas',
*
ERROR at line 52:
ORA-02291: integrity constraint (Y21CS172.SYS_C008267) violated - parent key not
found
*/

/* grade table, check constraint */
insert into grade values('Y21CS164', 'Sem5', 'CS222', 12);
/*
insert into grade values('Y21CS164',
*
ERROR at line 65:
ORA-02290: check constraint (Y21CS172.SYS_C008268) violated
*/