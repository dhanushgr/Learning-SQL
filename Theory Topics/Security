Security

-- Syntax and Examples
CREATE USER 'john'@'localhost' IDENTIFIED BY 'password123';

GRANT SELECT, INSERT ON employees TO 'john'@'localhost';

REVOKE INSERT ON employees FROM 'john'@'localhost';

DROP USER 'john'@'localhost';

GRANT ALL PRIVILEGES ON database_name.* TO 'admin'@'%';

-- Prevent SQL Injection (Parameterized Query Example)
PREPARE stmt FROM 'SELECT * FROM employees WHERE emp_id = ?';
SET @id = 1;
EXECUTE stmt USING @id;

-- Explanation Section
-- Hey! Security in SQL is like guarding your secret clubhouse—you decide who gets in and what they can touch. CREATE USER makes a new member—like giving John a key with a password. GRANT is handing out permissions—“John can look at employees and add new ones.” REVOKE is taking toys away—“No more adding for you, John!” DROP USER kicks them out completely. For big bosses, GRANT ALL PRIVILEGES gives them every key to the kingdom. Now, SQL Injection is a sneaky villain—bad guys trick queries to mess things up (like typing “DROP TABLE” in a form). Parameterized queries (with ?) are your shield—they keep data separate from commands, so no tricks get through. Security keeps your database a safe, happy place!