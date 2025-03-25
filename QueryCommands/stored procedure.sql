stored procedure

CREATE PROCEDURE procedure_name()
BEGIN
    SELECT column1, column2
    FROM table_name;
END;

CREATE PROCEDURE procedure_name(IN param1 INT)
BEGIN
    SELECT column1
    FROM table_name
    WHERE column2 = param1;
END;

CREATE PROCEDURE procedure_name(OUT param1 INT)
BEGIN
    SELECT COUNT(*) INTO param1
    FROM table_name;
END;

CREATE PROCEDURE procedure_name(INOUT param1 INT)
BEGIN
    SET param1 = param1 + 1;
    SELECT column1
    FROM table_name
    WHERE column2 = param1;
END;

CALL procedure_name();

CALL procedure_name(10);

CALL procedure_name(@output);
SELECT @output;

DROP PROCEDURE procedure_name;

DROP PROCEDURE IF EXISTS procedure_name;

CREATE PROCEDURE procedure_name()
BEGIN
    DECLARE var1 INT;
    SET var1 = 5;
    SELECT column1
    FROM table_name
    WHERE column2 > var1;
END;

ALTER PROCEDURE procedure_name
COMMENT 'Updated procedure';