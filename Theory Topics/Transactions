Transactions

-- Syntax and Examples
BEGIN;

INSERT INTO employees (emp_id, emp_name)
VALUES (1, 'John');

SAVEPOINT sp1;

UPDATE employees
SET emp_name = 'Jane'
WHERE emp_id = 1;

ROLLBACK TO sp1;

COMMIT;

START TRANSACTION;

DELETE FROM orders
WHERE order_id = 1;

COMMIT;

-- Explanation Section
-- Hey! Transactions are like a shopping trip with a safety net—you bundle up a bunch of changes and decide if you’re keeping them. BEGIN is when you start filling your cart—like adding an employee named John. SAVEPOINT is a little flag you stick in—like saying, “I’m at this point, might come back here.” If you update John to Jane but change your mind, ROLLBACK TO sp1 takes you back to just John, undoing the update. COMMIT is checking out—everything’s saved for good! ROLLBACK without a savepoint cancels the whole trip, like dumping the cart. Transactions let you experiment safely—whether it’s one step (like deleting an order) or a big chain of changes—keeping your database from getting messy if something goes wrong!