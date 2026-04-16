SET SERVEROUTPUT ON;
DECLARE
    CURSOR c3(dno NUMBER) IS SELECT EName, BasicSal FROM EMP WHERE Deptno = dno;
    total NUMBER := 0;
BEGIN
    FOR rec IN c3(10) LOOP
        DBMS_OUTPUT.PUT_LINE(rec.EName || ' ' || rec.BasicSal);
        total := total + rec.BasicSal;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total Salary Dept 10: ' || total);
END;
/