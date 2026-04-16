SET SERVEROUTPUT ON;
DECLARE
    CURSOR c1 IS SELECT EID, BasicSal FROM EMP WHERE Deptno = 20;
    v_eid EMP.EID%TYPE;
    v_sal EMP.BasicSal%TYPE;
BEGIN
    OPEN c1;

    IF c1%ISOPEN THEN
        LOOP
            FETCH c1 INTO v_eid, v_sal;
            EXIT WHEN c1%NOTFOUND;

            UPDATE EMP SET BasicSal = v_sal * 1.05 WHERE EID = v_eid;

            INSERT INTO emp_update VALUES(v_eid, SYSDATE, v_sal*1.05);
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Records Updated');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cursor Not Open');
    END IF;

    CLOSE c1;
END;
/