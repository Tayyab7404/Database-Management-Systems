DECLARE
    a number := &a;
BEGIN
    FOR i in 1..10 LOOP
        dbms_output.put_line(a || ' x ' || i || ' = ' || (a*i));
    END LOOP;
END;