Indexing Theory

-- Syntax and Examples
CREATE INDEX idx_emp_name
ON employees (emp_name);

CREATE UNIQUE INDEX idx_emp_id
ON employees (emp_id);

CREATE INDEX idx_dept_id
ON employees (dept_id, emp_name);

DROP INDEX idx_emp_name;

CREATE FULLTEXT INDEX idx_desc
ON products (description);

-- Explanation Section
-- Hi there! Indexes are like a superpower for finding stuff fast in a database. Imagine a huge phonebook—without an index, you’d flip through every page to find “John.” With an index on emp_name, it’s like having a mini-list saying, “John’s on page 50!” CREATE INDEX makes that list for any column, speeding up searches. A UNIQUE index is stricter—it says, “No two emp_ids can be the same,” like a VIP list with no repeats. You can even index multiple columns (like dept_id and emp_name) for trickier lookups. DROP INDEX tosses it out if you don’t need it anymore. FULLTEXT indexes are special—they’re for searching big text, like finding words in a product description. Indexes make queries zippy, but adding or changing data might slow down a bit since the list updates too. It’s a trade-off for speed!