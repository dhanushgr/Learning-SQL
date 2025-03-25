Database Anomalies

-- Syntax and Examples
-- Insertion Anomaly
CREATE TABLE unnormalized (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50)
);

-- Deletion Anomaly
INSERT INTO unnormalized (emp_id, emp_name, dept_name)
VALUES (1, 'John', 'HR');

DELETE FROM unnormalized WHERE emp_id = 1;

-- Update Anomaly
UPDATE unnormalized
SET dept_name = 'Human Resources'
WHERE dept_name = 'HR';

-- Explanation Section
-- Hi! Database anomalies are like little gremlins that pop up when tables aren’t set up right—they make things tricky! Imagine a messy table with employees and departments all mashed together. An Insertion Anomaly is when you can’t add something new—like a new department—without faking an employee too, because the table needs both. It’s like needing a kid to open a toy store! A Deletion Anomaly is when you lose too much—like deleting John wipes out the HR department info, even if others work there. An Update Anomaly is a headache—if HR changes to “Human Resources,” you’ve got to fix it everywhere it’s repeated, or it’s a mess. These gremlins show up when data’s jumbled—normalization splits tables (like employees and departments separate) to kick them out, keeping everything smooth and easy!