SET SERVEROUTPUT ON;
BEGIN
    FOR rec IN (SELECT EName, BasicSal FROM EMP ORDER BY BasicSal DESC)
    LOOP
        EXIT WHEN SQL%ROWCOUNT > 3;
        DBMS_OUTPUT.PUT_LINE(rec.EName || ' ' || rec.BasicSal);
    END LOOP;
END;
/