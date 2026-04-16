SET SERVEROUTPUT ON;
DECLARE
    v_eid EMP.EID%TYPE;
BEGIN
    v_eid := &eid;
    DELETE FROM EMP WHERE EID = v_eid;
    DBMS_OUTPUT.PUT_LINE('Record Deleted');
END;
/