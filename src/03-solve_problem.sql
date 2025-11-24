SET SERVEROUTPUT ON;

-- Use PL/SQL to process employee records with
-- collections, records, and GOTO handling.

DECLARE
    -- Define a record type matching the table structure
    TYPE employee_rec IS RECORD (
        emp_id        employees.emp_id%TYPE,
        emp_name      employees.emp_name%TYPE,
        monthly_sales employees.monthly_sales%TYPE
    );

    -- Define a collection of records
    TYPE employee_table IS TABLE OF employee_rec;

    -- Collection variable
    employees_data employee_table;

    -- Grade variable
    grade VARCHAR2(5);

BEGIN
    -- Load data into the collection
    SELECT emp_id, emp_name, monthly_sales
    BULK COLLECT INTO employees_data
    FROM employees;

    -- Loop through collection
    FOR i IN 1 .. employees_data.COUNT LOOP

        -- Skip null sales
        IF employees_data(i).monthly_sales IS NULL THEN
            DBMS_OUTPUT.PUT_LINE('Skipping ' || employees_data(i).emp_name ||
                                 ' (No sales data)');
            CONTINUE;
        END IF;

        -- Negative sales triggers GOTO
        IF employees_data(i).monthly_sales < 0 THEN
            GOTO invalid_sales_error;
        END IF;

        -- Determine grade
        IF employees_data(i).monthly_sales >= 1000 THEN
            grade := 'A';
        ELSIF employees_data(i).monthly_sales >= 500 THEN
            grade := 'B';
        ELSE
            grade := 'C';
        END IF;

        -- Print result
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || employees_data(i).emp_id ||
            ' | Name: ' || employees_data(i).emp_name ||
            ' | Sales: ' || employees_data(i).monthly_sales ||
            ' | Grade: ' || grade
        );
    END LOOP;

    RETURN;

    -- GOTO target: invalid sales error block
    <<invalid_sales_error>>
    DBMS_OUTPUT.PUT_LINE(
        'ERROR: Negative sales detected for ' ||
        employees_data(4).emp_name || '. Process aborted.'
    );

END;
/
