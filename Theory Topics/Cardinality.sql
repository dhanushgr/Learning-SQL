Cardinality

-- Syntax and Examples
-- One-to-One (1:1)
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50)
);

CREATE TABLE user_profiles (
    user_id INT PRIMARY KEY,
    email VARCHAR(50),
ukk    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- One-to-Many (1:N)
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Many-to-Many (N:N)
CREATE TABLE students (
    student_id INT PRIMARY KEY
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY
);

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Explanation Section
-- Hey, cardinality sounds fancy, right? It’s just about how tables “hang out” together! Picture relationships like a school. A One-to-One (1:1) relationship is like every student having one locker—each user gets one profile, no sharing! We use a primary key and foreign key to lock it down tight. A One-to-Many (1:N) relationship is like one teacher with lots of students—one department can have many employees, connected by dept_id. The department’s ID is the boss, and employees tag along with it. Now, Many-to-Many (N:N) is trickier—it’s like students taking multiple classes, and classes having multiple students. We can’t just link them directly, so we make a helper table (like student_courses) with both IDs to bridge the gap. Cardinality is all about counting how many connect—1 to 1, 1 to many, or many to many—and setting up tables to match those friendships!