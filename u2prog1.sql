SET SERVEROUTPUT ON;
BEGIN
    UPDATE EMP SET BasicSal = BasicSal * 1.10 WHERE Deptno = 10;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' Records Updated');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No Records Found');
    END IF;
END;
/