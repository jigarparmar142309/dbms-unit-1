SET SERVEROUTPUT ON;
DECLARE
    CURSOR c2 IS SELECT EName, Deptname, BasicSal FROM EMP ORDER BY BasicSal DESC;
    v_name EMP.EName%TYPE;
    v_dept EMP.Deptname%TYPE;
    v_sal EMP.BasicSal%TYPE;
    count1 NUMBER := 0;
BEGIN
    OPEN c2;
    LOOP
        FETCH c2 INTO v_name, v_dept, v_sal;
        EXIT WHEN c2%NOTFOUND OR count1 = 5;

        DBMS_OUTPUT.PUT_LINE(v_name || ' ' || v_dept || ' ' || v_sal);
        count1 := count1 + 1;
    END LOOP;
    CLOSE c2;
END;
/