DQL

SELECT column1, column2
FROM table_name;

SELECT DISTINCT column1
FROM table_name;

SELECT column1 AS alias_name
FROM table_name;

SELECT *
FROM table_name;

SELECT column1, column2
FROM table_name
WHERE condition;

SELECT column1
FROM table_name
WHERE column2 > value
AND column3 = value;

SELECT column1
FROM table_name
WHERE column2 IN (value1, value2, value3);

SELECT column1
FROM table_name
WHERE column2 BETWEEN value1 AND value2;

SELECT column1
FROM table_name
WHERE column2 LIKE 'pattern%';

SELECT column1, COUNT(column2)
FROM table_name
GROUP BY column1;

SELECT column1, SUM(column2)
FROM table_name
GROUP BY column1
HAVING SUM(column2) > value;

SELECT column1
FROM table_name
ORDER BY column1 ASC;

SELECT column1
FROM table_name
ORDER BY column1 DESC, column2 ASC;

SELECT column1
FROM table_name
LIMIT 10;

SELECT column1
FROM table_name
LIMIT 5 OFFSET 10;

SELECT t1.column1, t2.column2
FROM table1 t1
INNER JOIN table2 t2 ON t1.id = t2.id;

SELECT t1.column1, t2.column2
FROM table1 t1
LEFT JOIN table2 t2 ON t1.id = t2.id;

SELECT t1.column1, t2.column2
FROM table1 t1
RIGHT JOIN table2 t2 ON t1.id = t2.id;

SELECT t1.column1, t2.column2
FROM table1 t1
FULL JOIN table2 t2 ON t1.id = t2.id;

SELECT column1
FROM table_name
WHERE EXISTS (SELECT 1 FROM another_table WHERE condition);