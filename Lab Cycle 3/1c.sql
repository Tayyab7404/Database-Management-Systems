DECLARE
    fib_n_2 number := 0;
    fib_n_1 number := 1;
    fib_n number;
    n number := &n;
BEGIN
    dbms_output.put_line('The first ' || n || ' Fibonacci Numbers are:');
    dbms_output.put_line(fib_n_2);
    dbms_output.put_line(fib_n_1);
    FOR i in 3..n LOOP
        fib_n := fib_n_2 + fib_n_1;

        dbms_output.put_line(fib_n);

        fib_n_2 := fib_n_1;
        fib_n_1 := fib_n;
    END LOOP;
END;