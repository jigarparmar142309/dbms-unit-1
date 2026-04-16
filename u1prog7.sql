SET SERVEROUTPUT ON;
DECLARE
    pname VARCHAR2(20);
    qty NUMBER;
    price NUMBER;
    discount_per NUMBER;
    total NUMBER;
    discount_amt NUMBER;
BEGIN
    pname := '&pname';
    qty := &qty;
    price := &price;
    discount_per := &discount;

    total := qty * price;
    discount_amt := total * discount_per / 100;

    DBMS_OUTPUT.PUT_LINE('Product: ' || pname);
    DBMS_OUTPUT.PUT_LINE('Total: ' || total);
    DBMS_OUTPUT.PUT_LINE('Discount: ' || discount_amt);
END;
/