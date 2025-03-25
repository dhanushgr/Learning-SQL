Set Operations

SELECT column1 FROM table1
UNION
SELECT column1 FROM table2;

SELECT column1 FROM table1
UNION ALL
SELECT column1 FROM table2;

SELECT column1 FROM table1
INTERSECT
SELECT column1 FROM table2;

SELECT column1 FROM table1
EXCEPT
SELECT column1 FROM table2;

SELECT column1 FROM table1
UNION
SELECT column1 FROM table2
ORDER BY column1;

SELECT column1, column2 FROM table1
UNION ALL
SELECT column1, column2 FROM table2
WHERE condition;