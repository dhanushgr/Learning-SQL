SQL

1. DQL(Data Query Language)
	SELECT column1, column2, ...
	FROM table_name;

	SELECT DISTINCT column1, column2, ...
	FROM table_name;

	SELECT *
	FROM table_name;

	SELECT column1, column2, ...
	FROM table_name
	WHERE condition;

	SELECT column1, column2, ...
	FROM table_name
	ORDER BY column1 [ASC|DESC], column2 [ASC|DESC];

	SELECT column1, column2, ...
	FROM table_name
	LIMIT number;

	SELECT column1, column2, ...
	FROM table_name
	WHERE condition
	GROUP BY column1, column2, ...
	HAVING condition;

	SELECT column1, AGGREGATE_FUNCTION(column2)
	FROM table_name
	GROUP BY column1;

	SELECT column1, column2, ...
	FROM table1
	INNER JOIN table2
	ON table1.column = table2.column;

	SELECT column1, column2, ...
	FROM table1
	LEFT JOIN table2
	ON table1.column = table2.column;

	SELECT column1, column2, ...
	FROM table1
	RIGHT JOIN table2
	ON table1.column = table2.column;

	SELECT column1, column2, ...
	FROM table1
	FULL JOIN table2
	ON table1.column = table2.column;

	SELECT column1, column2, ...
	FROM table1, table2
	WHERE table1.column = table2.column;

	SELECT column1, column2, ...
	FROM table1
	WHERE column1 IN (value1, value2, ...);

	SELECT column1, column2, ...
	FROM table1
	WHERE column1 BETWEEN value1 AND value2;

	SELECT column1, column2, ...
	FROM table1
	WHERE column1 LIKE pattern;

	SELECT column1, column2, ...
	FROM table1
	WHERE EXISTS (subquery);

	SELECT column1, column2, ...
	FROM table1
	WHERE column1 = (subquery);


2. DDL(Data Definition Language)
	CREATE TABLE table_name (
	    column1 datatype constraints,
	    column2 datatype constraints,
	    ...
	);

	CREATE TABLE table_name (
	    column1 datatype PRIMARY KEY,
	    column2 datatype,
	    FOREIGN KEY (column2) REFERENCES other_table(column)
	);

	CREATE TEMPORARY TABLE table_name (
	    column1 datatype,
	    column2 datatype,
	    ...
	);

	CREATE TABLE new_table AS
	SELECT column1, column2, ...
	FROM existing_table;

	ALTER TABLE table_name
	ADD column_name datatype;

	ALTER TABLE table_name
	DROP COLUMN column_name;

	ALTER TABLE table_name
	ALTER COLUMN column_name datatype;

	ALTER TABLE table_name
	ADD CONSTRAINT constraint_name PRIMARY KEY (column);

	ALTER TABLE table_name
	ADD CONSTRAINT constraint_name FOREIGN KEY (column) REFERENCES other_table(column);

	DROP TABLE table_name;

	DROP TABLE table_name CASCADE;

	TRUNCATE TABLE table_name;

	CREATE INDEX index_name
	ON table_name (column1, column2, ...);

	DROP INDEX index_name;


3. DML(Data Manipulation Language)
	INSERT INTO table_name (column1, column2, ...)
	VALUES (value1, value2, ...);

	INSERT INTO table_name (column1, column2, ...)
	VALUES (value1, value2, ...), (value3, value4, ...);

	INSERT INTO table_name
	SELECT column1, column2, ...
	FROM another_table;

	UPDATE table_name
	SET column1 = value1, column2 = value2, ...
	WHERE condition;

	DELETE FROM table_name
	WHERE condition;

	DELETE FROM table_name;


4. DCL(Data Control Language)
	GRANT privilege_name
	ON object_name
	TO user_name;

	REVOKE privilege_name
	ON object_name
	FROM user_name;


5. TCL(Transaction Control Language)
	BEGIN;

	COMMIT;

	ROLLBACK;

	SAVEPOINT savepoint_name;

	ROLLBACK TO savepoint_name;


6. Aggregate Fuctions
	SELECT COUNT(column_name)
	FROM table_name;

	SELECT SUM(column_name)
	FROM table_name;

	SELECT AVG(column_name)
	FROM table_name;

	SELECT MIN(column_name)
	FROM table_name;

	SELECT MAX(column_name)
	FROM table_name;


7. subqueries
	SELECT column1, column2, ...
	FROM table_name
	WHERE column1 IN (SELECT column1 FROM another_table WHERE condition);

	SELECT column1, column2, ...
	FROM table_name
	WHERE column1 = (SELECT column1 FROM another_table WHERE condition LIMIT 1);

	SELECT column1, (SELECT column2 FROM another_table WHERE condition) AS alias
	FROM table_name;

8. Conditional Expressions
	SELECT column1,
	       CASE
	           WHEN condition1 THEN result1
	           WHEN condition2 THEN result2
	           ELSE result3
	       END AS alias
	FROM table_name;

	SELECT column1,
	       IF(condition, value_if_true, value_if_false) AS alias
	FROM table_name;


9. String Functions
	SELECT CONCAT(column1, column2)
	FROM table_name;

	SELECT UPPER(column1)
	FROM table_name;

	SELECT LOWER(column1)
	FROM table_name;

	SELECT SUBSTRING(column1 FROM start FOR length)
	FROM table_name;

	SELECT LENGTH(column1)
	FROM table_name;

	SELECT TRIM([LEADING|TRAILING|BOTH] 'character' FROM column1)
	FROM table_name;


10. Date and Time Functions
	SELECT NOW();

	SELECT CURDATE();

	SELECT CURTIME();

	SELECT DATE(column1)
	FROM table_name;

	SELECT YEAR(column1)
	FROM table_name;

	SELECT MONTH(column1)
	FROM table_name;

	SELECT DAY(column1)
	FROM table_name;

	SELECT DATE_ADD(column1, INTERVAL value unit)
	FROM table_name;

	SELECT DATEDIFF(date1, date2)
	FROM table_name;


11. Views
	CREATE VIEW view_name AS
	SELECT column1, column2, ...
	FROM table_name
	WHERE condition;

	DROP VIEW view_name;


12. Set Operations
	SELECT column1, column2
	FROM table1
	UNION
	SELECT column1, column2
	FROM table2;

	SELECT column1, column2
	FROM table1
	UNION ALL
	SELECT column1, column2
	FROM table2;

	SELECT column1, column2
	FROM table1
	INTERSECT
	SELECT column1, column2
	FROM table2;

	SELECT column1, column2
	FROM table1
	EXCEPT
	SELECT column1, column2
	FROM table2;
