-- 11-Drop
-- Covered: DROP TABLE, RESTRICT, CASCADE

-- 1) Create a table called test_two with column: test_id(serial, primary)
CREATE TABLE test_two(test_id serial PRIMARY KEY);

-- 2) Remove created table in the previous exercise.
-- DROP TABLE test_two;
-- DROP TABLE IF EXISTS test_two; -- no error if table doesn't exist.
-- DROP TABLE IF EXISTS test_two RESTRICT; -- don't remove if there is dependent object to this table.
-- DROP TABLE IF EXISTS test_two CASCADE; -- don't remove if there is constraint or dependency on this table.

