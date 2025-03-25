Integrity Constraints

-- Syntax and Examples
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) DEFAULT 'Unknown'
);

ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);

-- Explanation Section
-- Hey there! Integrity constraints are like the rulebook for your database—they make sure data plays nice. Imagine a Primary Key as a student ID—it’s unique for every employee and can’t be blank, so we always know who’s who. NOT NULL is a strict teacher—it says emp_name can’t be empty, no skipping that homework! CHECK is a gatekeeper—like age has to be 18 or more, or the database says, “Nope!” A Foreign Key is a bridge—dept_id in employees has to match a real dept_id in departments, keeping connections honest. UNIQUE is a bouncer—no duplicate emails allowed! DEFAULT is a backup—if you don’t fill in dept_name, it says “Unknown” instead of leaving it blank. Constraints are your data’s bodyguards, stopping mistakes and keeping everything trustworthy!