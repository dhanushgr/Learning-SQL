Conditional Expressions

SELECT CASE column1
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE result3
END AS alias
FROM table_name;

SELECT CASE
    WHEN column1 > value THEN result1
    WHEN column2 = value THEN result2
    ELSE result3
END AS alias
FROM table_name;

SELECT IF(column1 > value, result1, result2) AS alias
FROM table_name;

SELECT IFNULL(column1, default_value) AS alias
FROM table_name;

SELECT NULLIF(column1, value) AS alias
FROM table_name;

SELECT COALESCE(column1, column2, default_value) AS alias
FROM table_name;

SELECT column1,
       CASE WHEN column2 IS NULL THEN 'Yes' ELSE 'No' END AS is_null
FROM table_name;