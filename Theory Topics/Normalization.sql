Normalization

-- Syntax and Examples
-- Unnormalized Form
CREATE TABLE orders_unf (
    order_id INT,
    customer_name VARCHAR(50),
    products VARCHAR(100)
);

-- 1NF
CREATE TABLE orders_1nf (
    order_id INT,
    customer_name VARCHAR(50),
    product_id INT,
    PRIMARY KEY (order_id, product_id)
);

-- 2NF
CREATE TABLE orders_2nf (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders_2nf(order_id)
);

-- 3NF
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE orders_3nf (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items_3nf (
    order_id INT,
    product_id INT,
    FOREIGN KEY (order_id) REFERENCES orders_3nf(order_id)
);

-- BCNF
CREATE TABLE course_instructors (
    course_id INT,
    instructor_id INT,
    PRIMARY KEY (course_id),
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

-- Explanation Section
-- Hi there! Normalization is like cleaning up a messy toy box so everything has its place. Imagine you’ve got a table with orders, customer names, and a big list of products all jumbled together—that’s Unnormalized Form, and it’s chaos! First Normal Form (1NF) says, “No lists allowed!” So, we split each product into its own row, making everything neat and single-valued. Second Normal Form (2NF) steps in when we’ve got a combo key (like order_id + product_id) and says, “Every column must depend on the whole key, not just part of it.” So, we move customer_name to its own table since it only needs order_id, not product_id. Third Normal Form (3NF) catches sneaky overlaps—like if customer_name depends on a customer_id, not just the order, we split it out to a customers table. Boyce-Codd Normal Form (BCNF) is the strict teacher—it fixes even trickier overlaps where something like a course depends on an instructor in a weird way. Normalization makes sure data isn’t repeated or tangled, keeping it clean and easy to manage!