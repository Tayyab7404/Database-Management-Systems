/* DELETE statements constraint violation */

/* deleting a row from course table whose course_id attribute is referenced by course attribute in student table */
delete from course where course_id='CS223';
/*
Error: FOREIGN KEY constraint failed
*/