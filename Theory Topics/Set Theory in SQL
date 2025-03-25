Set Theory in SQL

-- Syntax and Examples
SELECT emp_id FROM employees
UNION
SELECT emp_id FROM contractors;

SELECT emp_id FROM employees
UNION ALL
SELECT emp_id FROM contractors;

SELECT emp_id FROM employees
INTERSECT
SELECT emp_id FROM managers;

SELECT emp_id FROM employees
EXCEPT
SELECT emp_id FROM retirees;

-- Explanation Section
-- Hey there! Set theory in SQL is like playing with groups of toys—it’s about combining or comparing lists in fun ways. UNION is like pouring two buckets of IDs (employees and contractors) into one, but it shakes out any doubles so each ID’s there once. UNION ALL is lazier—it keeps all the toys, even duplicates, if someone’s listed twice. INTERSECT is picking out toys that are in both buckets—like finding IDs that are both employees and managers. EXCEPT is keeping toys from one bucket that aren’t in another—like employees who aren’t retirees. It’s a simple, cool way to mash up data without worrying about joins—just pure list magic!