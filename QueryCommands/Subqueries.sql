Subqueries

SELECT column1
FROM table_name
WHERE column2 = (SELECT column3 FROM another_table WHERE condition);

SELECT column1
FROM table_name
WHERE column2 IN (SELECT column3 FROM another_table WHERE condition);

SELECT column1
FROM table_name
WHERE column2 > (SELECT AVG(column3) FROM another_table);

SELECT column1
FROM table_name t1
WHERE EXISTS (SELECT 1 FROM another_table t2 WHERE t2.id = t1.id);

SELECT column1
FROM table_name t1
WHERE NOT EXISTS (SELECT 1 FROM another_table t2 WHERE t2.id = t1.id);

SELECT (SELECT column1 FROM another_table WHERE condition) AS alias
FROM table_name;

SELECT column1, (SELECT MAX(column2) FROM another_table) AS max_value
FROM table_name;

INSERT INTO table_name (column1)
SELECT column2 FROM another_table WHERE condition;

UPDATE table_name
SET column1 = (SELECT column2 FROM another_table WHERE condition)
WHERE condition;

DELETE FROM table_name
WHERE column1 = (SELECT column2 FROM another_table WHERE condition);