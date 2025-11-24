-- Insert sample employee data
INSERT INTO employees VALUES (1, 'Eric', 1200);
INSERT INTO employees VALUES (2, 'Sam', 750);
INSERT INTO employees VALUES (3, 'Alice', 300);
INSERT INTO employees VALUES (4, 'Diane', -50); -- This will trigger GOTO
INSERT INTO employees VALUES (5, 'John', NULL); -- This will be skipped
/
COMMIT;
