-- Oracle-specific SQL / PL/SQL practice

-- NULL substitution
SELECT NVL(return_reason, 'No Return')
FROM orders;

-- Current Oracle database date/time
SELECT SYSDATE
FROM dual;

-- String-to-date conversion
SELECT TO_DATE('2026-10-04', 'YYYY-MM-DD')
FROM dual;

-- Sequence example
CREATE SEQUENCE customer_seq
START WITH 1
INCREMENT BY 1;

SELECT customer_seq.NEXTVAL
FROM dual;

-- Introductory PL/SQL block
SET SERVEROUTPUT ON;

DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM customer_master;

    DBMS_OUTPUT.PUT_LINE('Customer count: ' || v_count);
END;
/
