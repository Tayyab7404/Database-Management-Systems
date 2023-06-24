create table DEMO_TAB(Num1 number not null,
                      Num2 number not null,
                      LCM number not null,
                      HCF number not null);

DECLARE
    num1 number := &num1;
    num2 number := &num2;
    LCM number;
    HCF number;
BEGIN
