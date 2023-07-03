/* Dropping the constraints using alter table statements */

/* course table, unique constraint */
alter table course drop constraint SYS_C008264;
/* TABLE altered. */

/* course table, primary key constraint */
alter table course drop constraint SYS_C008263;
/* TABLE altered. */

/* student table, foreign ket constraint, we remove this first because it refers to the course_id primary key */
alter table student drop constraint SYS_C008267;
/* TABLE altered. */

/* student table, NOT NULL constraint */
alter table student modify name null;
/* TABLE altered. */

/* student table, PRIMARY KEY constraint */
alter table student drop constraint SYS_C008266;
/* TABLE altered. */

/* grade table, CHECK constraint */
alter table grade drop constraint SYS_C008268;
/* TABLE altered. */
