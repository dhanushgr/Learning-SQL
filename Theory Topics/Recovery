Recovery
-- Syntax and Examples
-- Log-Based Recovery
START TRANSACTION;

INSERT INTO logs (log_id, action)
VALUES (1, 'Insert');

COMMIT;

-- Checkpoint
CHECKPOINT;

-- Rollback
START TRANSACTION;

DELETE FROM employees
WHERE emp_id = 1;

ROLLBACK;

-- Explanation Section
-- Hi there! Recovery is like a superhero saving your database from a crash—like if your computer shuts off mid-game. Logs are your diary—they write down every move, like “added this, changed that.” If something goes wrong, the database reads the diary to fix it—maybe replaying steps or undoing them. CHECKPOINT is a big “I’m okay!” marker—it says, “Everything’s saved up to here,” so recovery doesn’t start from scratch. ROLLBACK is your undo button—say you delete an employee but change your mind; it brings them back like nothing happened. Recovery makes sure your data’s safe, even if the power blinks or you hit the wrong button—it’s the database’s backup plan!