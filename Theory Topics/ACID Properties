ACID Properties

-- Syntax and Examples
START TRANSACTION;

INSERT INTO accounts (account_id, balance)
VALUES (1, 1000);

UPDATE accounts
SET balance = balance - 100
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 100
WHERE account_id = 2;

COMMIT;

-- Rollback Example
START TRANSACTION;

DELETE FROM employees
WHERE emp_id = 1;

ROLLBACK;

-- Explanation Section
-- Hi! ACID properties are like a superhero squad for your database—they save the day when things get tricky! Imagine you’re moving $100 from one account to another. Atomicity is the “all or nothing” hero—if any step fails (like the power cuts out), it undoes everything, so no money’s lost. Consistency is the rule-keeper—it makes sure the database stays happy, like ensuring balances don’t go negative and all rules are followed. Isolation is the privacy shield—it keeps your transfer separate from someone else’s, so no one messes with your numbers mid-move. Durability is the memory champ—once you say COMMIT, it’s locked in forever, even if the computer crashes right after. Together, ACID makes sure your data stays safe and sound, no matter what chaos happens!