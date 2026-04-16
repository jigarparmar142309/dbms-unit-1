SET SERVEROUTPUT ON;
DECLARE
    p NUMBER;
    r NUMBER;
    t NUMBER;
    si NUMBER;
BEGIN
    p := &p;
    r := &r;
    t := &t;
    si := (p*r*t)/100;
    DBMS_OUTPUT.PUT_LINE('Simple Interest: ' || si);
END;
/