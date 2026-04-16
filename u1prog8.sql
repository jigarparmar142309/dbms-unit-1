SET SERVEROUTPUT ON;
DECLARE
    n NUMBER;
    i NUMBER := 1;
BEGIN
    n := &n;

    DBMS_OUTPUT.PUT_LINE('FOR LOOP');
    FOR j IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(j);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('WHILE LOOP');
    WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('SIMPLE LOOP');
    i := 1;
    LOOP
        EXIT WHEN i > n;
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;
/