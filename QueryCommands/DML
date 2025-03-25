DML

INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);

INSERT INTO table_name
VALUES (value1, value2, value3);

INSERT INTO table_name (column1, column2)
VALUES (value1, value2), (value3, value4);

INSERT INTO table_name
SELECT column1, column2 FROM another_table
WHERE condition;

UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;

UPDATE table_name
SET column1 = column1 + 1
WHERE condition;

UPDATE table_name t1
JOIN table_name2 t2 ON t1.id = t2.id
SET t1.column1 = t2.column2
WHERE condition;

DELETE FROM table_name
WHERE condition;

DELETE t1 FROM table_name t1
JOIN table_name2 t2 ON t1.id = t2.id
WHERE condition;

MERGE INTO target_table AS t
USING source_table AS s
ON t.id = s.id
WHEN MATCHED THEN
    UPDATE SET t.column1 = s.column1
WHEN NOT MATCHED THEN
    INSERT (column1, column2) VALUES (s.column1, s.column2);