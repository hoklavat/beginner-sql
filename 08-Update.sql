-- 08-Update
-- Covered: UPDATE, RETURNING
-- use link table created in previous example.

-- 1) Update description columns for all rows as 'Empty Description'.
UPDATE link SET description='Empty Description';

-- 2) Update description columns for rows whose name column starts with 'A' as 'Names start with A.'
-- UPDATE link SET description='Name starts with an A' WHERE name LIKE 'A%';

-- 3) Update description columns for all rows as their name columns.
-- UPDATE link SET description=name;

-- 4) Update description column for row having id 1 as 'New Description' and in same statement show all columns for this row as a result.
-- UPDATE link SET description='New Description' WHERE id=1 RETURNING url, id, name, description;