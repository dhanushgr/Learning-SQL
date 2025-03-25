Query Optimization

-- Syntax and Examples
EXPLAIN
SELECT emp_name
FROM employees
WHERE dept_id = 1;

SELECT /*+ INDEX(emp_idx) */ emp_name
FROM employees
WHERE emp_id = 100;

CREATE INDEX idx_dept
ON employees (dept_id);

SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > 50000;

-- Explanation Section
-- Hey! Query optimization is like finding the fastest way to school—it’s all about making SQL run quick and smart. When you ask for data, the database makes a plan—like “check this index, then join these tables.” EXPLAIN shows you that plan, like a treasure map for your query. Sometimes you can nudge it with a hint (like /*+ INDEX */) to say, “Hey, use this shortcut!” Adding an index (like on dept_id) is like paving a fast lane—searches zoom instead of crawling. For big queries—like mixing employees and departments while filtering salaries—the database picks the best order and method (maybe a fast join or early filter). Optimization is tweaking things so you’re not waiting forever for answers, even with tons of data!