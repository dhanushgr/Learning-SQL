Triggers

CREATE TRIGGER trigger_name
BEFORE INSERT ON table_name
FOR EACH ROW
BEGIN
    SET NEW.column1 = NEW.column1 + 1;
END;

CREATE TRIGGER trigger_name
AFTER UPDATE ON table_name
FOR EACH ROW
BEGIN
    INSERT INTO audit_table (column1, old_value, new_value)
    VALUES (NEW.id, OLD.column1, NEW.column1);
END;

CREATE TRIGGER trigger_name
BEFORE DELETE ON table_name
FOR EACH ROW
BEGIN
    INSERT INTO deleted_records (column1)
    VALUES (OLD.column1);
END;

CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
FOR EACH ROW
BEGIN
    UPDATE summary_table
    SET total = total + NEW.amount;
END;

DROP TRIGGER trigger_name;

DROP TRIGGER IF EXISTS trigger_name;

CREATE TRIGGER trigger_name
BEFORE UPDATE ON table_name
FOR EACH ROW
BEGIN
    IF NEW.column1 < 0 THEN
        SET NEW.column1 = 0;
    END IF;
END;