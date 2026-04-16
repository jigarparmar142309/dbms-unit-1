SET SERVEROUTPUT ON;
DECLARE
BEGIN
    FOR rec IN (SELECT * FROM EMP WHERE Gender='Male' AND Deptname='HR')
    LOOP
        DBMS_OUTPUT.PUT_LINE(rec.EID || ' ' || rec.EName);
    END LOOP;
END;
/