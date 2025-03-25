Date and Time Functions

SELECT NOW();

SELECT CURRENT_DATE;

SELECT CURRENT_TIME;

SELECT CURRENT_TIMESTAMP;

SELECT DATE(column1) FROM table_name;

SELECT TIME(column1) FROM table_name;

SELECT YEAR(column1) FROM table_name;

SELECT MONTH(column1) FROM table_name;

SELECT DAY(column1) FROM table_name;

SELECT HOUR(column1) FROM table_name;

SELECT MINUTE(column1) FROM table_name;

SELECT SECOND(column1) FROM table_name;

SELECT DATE_ADD(column1, INTERVAL 1 DAY) FROM table_name;

SELECT DATE_SUB(column1, INTERVAL 1 MONTH) FROM table_name;

SELECT DATEDIFF(column1, column2) FROM table_name;

SELECT TIMEDIFF(column1, column2) FROM table_name;

SELECT DATE_FORMAT(column1, '%Y-%m-%d') FROM table_name;

SELECT STR_TO_DATE(column1, '%Y-%m-%d') FROM table_name;

SELECT EXTRACT(YEAR FROM column1) FROM table_name;

SELECT LAST_DAY(column1) FROM table_name;