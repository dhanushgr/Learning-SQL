Joins

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

SELECT t1.column1, t2.column2
FROM table1 t1
CROSS JOIN table2 t2;

SELECT t1.column1, t2.column2, t3.column3
FROM table1 t1
INNER JOIN table2 t2 ON t1.id = t2.id
LEFT JOIN table3 t3 ON t2.id = t3.id;

SELECT t1.column1, t2.column2
FROM table1 t1
NATURAL JOIN table2 t2;

SELECT t1.column1, t2.column2
FROM table1 t1
JOIN table2 t2 USING (id);

SELECT t1.column1, t2.column2
FROM table1 t1
LEFT OUTER JOIN table2 t2 ON t1.id = t2.id
WHERE t2.column2 IS NULL;