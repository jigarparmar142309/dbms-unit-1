SET SERVEROUTPUT ON;
DECLARE
    feet NUMBER;
BEGIN
    feet := &feet;
    DBMS_OUTPUT.PUT_LINE('CM: ' || (feet*30.48));
    DBMS_OUTPUT.PUT_LINE('INCH: ' || (feet*12));
    DBMS_OUTPUT.PUT_LINE('METER: ' || (feet*0.3048));
END;
/