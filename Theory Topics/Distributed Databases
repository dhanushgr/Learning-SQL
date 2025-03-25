Distributed Databases

-- Syntax and Examples
-- Horizontal Fragmentation
CREATE TABLE employees_site1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50)
) WHERE emp_id < 1000;

CREATE TABLE employees_site2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50)
) WHERE emp_id >= 1000;

-- Vertical Fragmentation
CREATE TABLE emp_basic (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50)
);

CREATE TABLE emp_details (
    emp_id INT PRIMARY KEY,
    salary INT
);

-- Distributed Query
SELECT e.emp_name, d.dept_name
FROM employees@site1 e
JOIN departments@site2 d ON e.dept_id = d.dept_id;

-- Explanation Section
-- Hi! Distributed databases are like having your toys in different houses—it’s one big collection, but spread out! Imagine employees split across two cities. Horizontal Fragmentation cuts rows—like employees with IDs under 1000 in one place, 1000+ in another. It’s like dividing a class by alphabetical order. Vertical Fragmentation splits columns—like names in one table, salaries in another, linked by IDs. It’s like keeping your toy cars’ colors in one box and sizes in another. Queries still work magic—they grab data from all these spots (like employees@site1) and mix it, even across the world! Distributed databases are awesome for big companies with data everywhere—keeps things fast and local but connected!