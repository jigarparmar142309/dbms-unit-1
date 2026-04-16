SET SERVEROUTPUT ON;
DECLARE
    c NUMBER;
    f NUMBER;
BEGIN
    c := &c;
    f := (c * 9/5) + 32;
    DBMS_OUTPUT.PUT_LINE('Fahrenheit: ' || f);
END;
/