declare
    a number := &a;
    b number := &b;
begin
    dbms_output.put_line(a || ' + ' || b || ' = ' || (a+b));
end;