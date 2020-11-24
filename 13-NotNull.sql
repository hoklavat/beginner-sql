-- 13-NOTNULL
-- Covered: NOT NULL

-- 1) Create a table called learn_null with columns: first_name(varchar), sales(integer).
--    constraints; sales column shouldn't be null.
CREATE TABLE learn_null(
first_name VARCHAR(50),
sales integer NOT NULL);

-- 2) Observe result of statements below after creating learn_null table.
-- INSERT INTO learn_null(first_name) VALUES('John'); -- error
-- INSERT INTO learn_null(first_name) VALUES('John', 12); -- error
-- INSERT INTO learn_null(first_name, sales) VALUES('John', 12); -- no error