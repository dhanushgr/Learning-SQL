Window Function

SELECT column1,
       ROW_NUMBER() OVER (PARTITION BY column2 ORDER BY column3) AS row_num
FROM table_name;

SELECT column1,
       RANK() OVER (PARTITION BY column2 ORDER BY column3 DESC) AS rank
FROM table_name;

SELECT column1,
       DENSE_RANK() OVER (PARTITION BY column2 ORDER BY column3) AS dense_rank
FROM table_name;

SELECT column1,
       NTILE(4) OVER (PARTITION BY column2 ORDER BY column3) AS quartile
FROM table_name;

SELECT column1,
       SUM(column3) OVER (PARTITION BY column2) AS total
FROM table_name;

SELECT column1,
       AVG(column3) OVER (PARTITION BY column2 ORDER BY column4 ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_avg
FROM table_name;

SELECT column1,
       LAG(column3, 1) OVER (PARTITION BY column2 ORDER BY column4) AS previous_value
FROM table_name;

SELECT column1,
       LEAD(column3, 1) OVER (PARTITION BY column2 ORDER BY column4) AS next_value
FROM table_name;

SELECT column1,
       FIRST_VALUE(column3) OVER (PARTITION BY column2 ORDER BY column4) AS first_value
FROM table_name;

SELECT column1,
       LAST_VALUE(column3) OVER (PARTITION BY column2 ORDER BY column4 ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_value
FROM table_name;

SELECT column1,
       CUME_DIST() OVER (PARTITION BY column2 ORDER BY column3) AS cumulative_dist
FROM table_name;

SELECT column1,
       PERCENT_RANK() OVER (PARTITION BY column2 ORDER BY column3) AS percent_rank
FROM table_name;