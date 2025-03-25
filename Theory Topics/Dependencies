Dependencies

-- Syntax and Examples
-- Functional Dependency: emp_id → emp_name
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50)
);

-- Partial Dependency: order_id, product_id → product_name
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    product_name VARCHAR(50),
    PRIMARY KEY (order_id, product_id)
);

-- Transitive Dependency: emp_id → dept_id → dept_name
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    dept_id INT,
    dept_name VARCHAR(50)
);

-- Multivalued Dependency: emp_id →→ skills
CREATE TABLE emp_skills (
    emp_id INT,
    skill VARCHAR(50)
);

-- Explanation Section
-- Hey! Dependencies are like treasure maps in a database—they show how one piece of info leads to another. A Functional Dependency is simple: if you know emp_id, you know emp_name—it’s a straight arrow from one to the other. Think of it like knowing a student’s ID tells you their name! A Partial Dependency is a troublemaker—it happens when you’ve got a key with two parts (like order_id + product_id), but something (like product_name) only cares about one part (product_id). That’s messy, and 2NF hates it! A Transitive Dependency is a chain—like emp_id tells you dept_id, and dept_id tells you dept_name. It’s like asking a friend for another friend’s phone number—too many steps, so 3NF breaks it up. A Multivalued Dependency is wild: emp_id might link to a bunch of skills, and they don’t depend on each other—it’s like one person having many hobbies. Dependencies help us figure out how to split tables so nothing’s confusing or repeated!