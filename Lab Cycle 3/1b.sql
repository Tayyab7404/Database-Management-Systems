DECLARE
    a number := &a;
    temp_a number := a;
    rem number;
    rev number := 0;
BEGIN
    WHILE(temp_a != 0) LOOP
        rem := mod(temp_a, 10);
        rev := rev*10 + rem;
        temp_a := FLOOR(temp_a/10);
    END LOOP;

    IF a = rev THEN
        dbms_output.put_line(a || ' is a Palindrome');
    ELSE
        dbms_output.put_line(a || ' is not a Palindrome');
    END IF;
END;