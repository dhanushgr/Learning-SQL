Constraints

-- Syntax and Examples
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    email VARCHAR(50) UNIQUE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
);

ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (salary > 0);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON UPDATE SET NULL
);

-- Explanation Section
-- Hey there! Constraints are like the rules on a game board—they keep your database fair and fun. PRIMARY KEY is the king—emp_id is unique and never blank, so every employee has their own spot. NOT NULL is a must-do—emp_name can’t be empty, or the game’s off! CHECK is a referee—age has to be 18+, or it’s “no entry!” UNIQUE is a one-of-a-kind rule—emails can’t repeat, like special badges. FOREIGN KEY is a team player—dept_id links to departments, and ON DELETE CASCADE means if a department’s gone, its employees vanish too. ON UPDATE SET NULL is gentler—if a customer ID changes, orders just lose the link. ADD CONSTRAINT lets you name rules (like chk_salary) for extra control. Constraints make sure your data stays honest and connected—no cheating allowed!