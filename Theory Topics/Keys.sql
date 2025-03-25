Keys

-- Syntax and Examples
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE emp_details (
    emp_id INT,
    ssn VARCHAR(11) UNIQUE,
    email VARCHAR(50),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE projects (
    proj_id INT,
    emp_id INT,
    PRIMARY KEY (proj_id, emp_id)
);

ALTER TABLE employees
ADD CONSTRAINT candidate_key UNIQUE (emp_name, dept_id);

-- Explanation Section
-- Hi! Let’s talk about keys—they’re super important in SQL, like nametags at a party! A Primary Key is the main ID for a table, like emp_id for employees. It’s unique for every row—no two people can have the same ID—and it’s never empty. Think of it as your school ID number! A Foreign Key is a connector—it’s a column in one table (like emp_id in emp_details) that links to a primary key in another (like employees). It’s how we say, “This detail belongs to that employee!” A Candidate Key is any column (or combo) that could be the primary key—like emp_name + dept_id might work if no two employees in the same department share a name. A Super Key is a bigger set that’s unique too, but might include extra stuff we don’t need (like emp_id + emp_name). A Composite Key is when we team up columns—like proj_id and emp_id together—to make a unique ID for a table. Keys are like the glue and locks that keep data tied together and organized!