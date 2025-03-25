Indexes

CREATE INDEX index_name
ON table_name (column1);

CREATE UNIQUE INDEX index_name
ON table_name (column1);

CREATE INDEX index_name
ON table_name (column1, column2);

CREATE INDEX index_name
ON table_name (column1 DESC);

CREATE INDEX index_name
ON table_name (column1)
WHERE condition;

DROP INDEX index_name;

CREATE FULLTEXT INDEX index_name
ON table_name (column1);

CREATE SPATIAL INDEX index_name
ON table_name (column1);

ALTER TABLE table_name
ADD INDEX index_name (column1);

ALTER TABLE table_name
DROP INDEX index_name;