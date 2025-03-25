Relational Model

-- Syntax and Examples
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

SELECT emp_id, emp_name, dept_name
FROM employees e, departments d
WHERE e.dept_id = d.dept_id;

-- Pseudo-code for Relational Algebra
-- Selection: σ(dept_id = 1)(employees)
SELECT * FROM employees WHERE dept_id = 1;

-- Projection: π(emp_name, dept_id)(employees)
SELECT emp_name, dept_id FROM employees;

-- Cartesian Product: employees × departments
SELECT * FROM employees, departments;

-- Explanation Section
-- Hey there! So, you’re curious about the relational model? Imagine you’re organizing a huge toy collection. You’d put all the toy cars in one box, dolls in another, and so on. That’s what the relational model does with data—it uses tables to keep things neat. Each table (or “relation”) is like a box for one kind of stuff, like employees or departments. Rows are individual items (like one employee), and columns are details about them (like their ID or name). The magic happens when tables connect—like how an employee’s dept_id links to a department’s dept_id. It’s like putting a tag on each toy saying where it belongs! SQL lets us mix and match this data with queries, like asking, “Which employees are in which departments?” Relational algebra is the behind-the-scenes math—it’s like a recipe book with steps like “pick” (selection), “choose columns” (projection), or “mix everything” (Cartesian product). It’s the foundation of how SQL organizes and finds stuff, making data feel like a big, connected puzzle!