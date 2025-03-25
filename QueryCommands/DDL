DDL

CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    PRIMARY KEY (column1),
    FOREIGN KEY (column2) REFERENCES other_table(column_name),
    UNIQUE (column3),
    CHECK (condition),
    DEFAULT default_value
);

CREATE TABLE IF NOT EXISTS table_name (
    column1 datatype,
    column2 datatype
);

CREATE TEMPORARY TABLE temp_table (
    column1 datatype
);

CREATE TABLE new_table AS 
SELECT column1, column2 FROM existing_table;

ALTER TABLE table_name
ADD column_name datatype constraints;

ALTER TABLE table_name
ADD CONSTRAINT constraint_name FOREIGN KEY (column) REFERENCES other_table(column);

ALTER TABLE table_name
MODIFY column_name datatype constraints;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;

ALTER TABLE table_name
RENAME TO new_table_name;

DROP TABLE table_name;

DROP TABLE IF EXISTS table_name;

TRUNCATE TABLE table_name;

CREATE INDEX index_name
ON table_name (column1, column2);

CREATE UNIQUE INDEX index_name
ON table_name (column1);

DROP INDEX index_name;

CREATE DATABASE database_name;

DROP DATABASE database_name;

CREATE SCHEMA schema_name;

DROP SCHEMA schema_name;