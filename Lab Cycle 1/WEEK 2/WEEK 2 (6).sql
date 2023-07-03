/* Adding the constraints using alter table statements */

/* course table, course_name unique constraint */
alter table course add constraint cnameUniq unique(course_name);
/* Table altered. */

/* course table, course_id primary key constraint */
alter table course add constraint cidPK primary key(course_id);
/* Table altered. */

/* student table, name not null constraint */
alter table student modify name not null;
/* Table altered. */

/* student table, id primary key constraint */
alter table student add constraint sidPK primary key(id);
/* Table altered. */

/* student table, course foreign key constraint */
alter table student add constraint courseFK foreign key(course) references course(course_id);
/* Table altered. */

/* grade table, grade check constraint */
alter table grade add constraint gradeCheck check(grade >= 5 and grade <= 10);
/* Table altered. */
