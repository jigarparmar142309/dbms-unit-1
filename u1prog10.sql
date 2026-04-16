SET SERVEROUTPUT ON;
DECLARE
    v_eid EMP.EID%TYPE;
    basic NUMBER;
    hra NUMBER;
    da NUMBER;
    medical NUMBER := 500;
    pf NUMBER;
    gross NUMBER;
BEGIN
    v_eid := &eid;

    SELECT BasicSal INTO basic FROM EMP WHERE EID = v_eid;

    hra := basic * 0.15;
    da := basic * 0.50;
    pf := basic * 0.10;

    gross := basic + hra + da + medical - pf;

    DBMS_OUTPUT.PUT_LINE('Gross Salary: ' || gross);
END;
/