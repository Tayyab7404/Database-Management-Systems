declare
    a number := &a;
    b number := &b;
begin
    dbms_output.put_line(a || ' + ' || b || ' = ' || (a+b));
    dbms_output.put_line(FLOOR(a/10));
    dbms_output.put_line(mod(a,10));
end;