Database Design

-- Syntax and Examples
-- ER Model Example
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE emp_dept (
    emp_id INT,
    dept_id INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Mapping ER to Schema
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Explanation Section
-- Hi! Database design is like planning a city before building it—you need a map! The Entity-Relationship (ER) Model is your sketchbook. Entities are the big things—like employees or departments—think of them as buildings. Attributes are details about them—like emp_name or dept_id—those are the doors and windows. Relationships show how they connect—like employees working in departments—it’s the roads between buildings! An ER Diagram draws this out with boxes (entities) and lines (relationships), so you can see the plan. Mapping it to a schema is turning that sketch into real SQL tables: each entity gets a table, attributes become columns, and tricky relationships (like many employees in many departments) might need a new table (like emp_dept) to link them. It’s all about imagining your data world and then making it real with tables that fit together perfectly!