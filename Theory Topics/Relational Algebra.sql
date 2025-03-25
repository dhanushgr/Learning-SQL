Relational Algebra

-- Syntax and Examples
-- Selection: σ(salary > 50000)(employees)
SELECT * FROM employees WHERE salary > 50000;

-- Projection: π(emp_name, dept_id)(employees)
SELECT emp_name, dept_id FROM employees;

-- Union: employees ∪ contractors
SELECT emp_name FROM employees
UNION
SELECT contractor_name FROM contractors;

-- Intersection: employees ∩ managers
SELECT emp_id FROM employees
INTERSECT
SELECT emp_id FROM managers;

-- Difference: employees − retirees
SELECT emp_id FROM employees
EXCEPT
SELECT emp_id FROM retirees;

-- Join: employees ⋈ departments
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Explanation Section
-- Hi! Relational algebra is like the secret recipe for SQL—it’s a math-y way to describe how we grab and mix data. Imagine you’ve got a toy box full of employees. Selection (σ) is picking out toys—like “only employees with salary over 50,000.” Projection (π) is choosing what to look at—like “just names and department IDs.” Union (∪) is dumping two boxes together—like employees and contractors into one big pile, no doubles. Intersection (∩) finds toys in both boxes—like who’s an employee AND a manager. Difference (−) is keeping toys from one box that aren’t in another—like employees not retired. Join (⋈) is pairing up toys—like matching employees with their departments. It’s the brainy backbone of SQL, turning questions into steps a computer can follow!