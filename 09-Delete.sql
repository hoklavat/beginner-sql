-- 09-Delete
-- Covered: DELETE
-- use link table created in previous example.

-- 1) Delete all rows from link table whose name column starts with letter 'B'.
DELETE FROM link WHERE name LIKE 'B%'; -- shows number of deleted rows as a result.
-- DELETE FROM link WHERE name LIKE 'B%' RETURNING *; -- shows all columns of deleted rows as a result.