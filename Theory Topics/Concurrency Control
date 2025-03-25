Concurrency Control

-- Syntax and Examples
START TRANSACTION;

SELECT balance
FROM accounts
WHERE account_id = 1
FOR UPDATE;

UPDATE accounts
SET balance = balance - 100
WHERE account_id = 1;

COMMIT;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

BEGIN;

UPDATE employees
SET salary = salary + 1000
WHERE emp_id = 1;

COMMIT;

-- Explanation Section
-- Hey! Concurrency control is like managing a busy playground—lots of kids (or programs) want to play with the same toys (data) at once, and we need rules! Imagine two people trying to update an account balance—without control, it’s a mess. START TRANSACTION locks them in their own bubble. FOR UPDATE is a “hands off!” sign—it stops others from touching that row until you’re done. COMMIT says, “All good, save it!” Isolation levels are like fence heights—SERIALIZABLE is the tallest, keeping everything super separate so no one steps on toes, but it might slow things down. Lower levels (like READ COMMITTED) are shorter fences—faster, but riskier. Concurrency control makes sure everyone gets a turn without breaking the database!
