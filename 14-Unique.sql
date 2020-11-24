-- 14-Unique
-- Covered: UNIQUE

-- 1) Create a table called people with columns: id(serial), first_name(varchar), email(varchar).
--    constraints; email column should be unique. same email wouldn't be accepted for different rows.
CREATE TABLE people(
id serial PRIMARY KEY,
first_name VARCHAR(50),
email VARCHAR(100) UNIQUE);

-- 2) Observe result of statements below after creating people table.
-- INSERT INTO people(id, first_name, email) VALUES(1, 'Joe', 'joe@joe.com');
-- INSERT INTO people(id, first_name, email) VALUES(2, 'Joseph', 'joe@joe.com'); -- error.
-- INSERT INTO people(id, first_name, email) VALUES(1 'Joseph', 'joseph@joseph.com'); -- error.
-- INSERT INTO people(id, first_name, email) VALUES(3 'Joseph', 'joseph@joseph.com');