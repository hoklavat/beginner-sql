-- 10-Alter
-- Covered: ALTER TABLE, DROP TABLE, ADD COLUMN, DROP COLUMN, RENAME COLUMN, TO, IF EXISTS

-- 1) Delete link table from previous example.
DROP TABLE IF EXISTS link;

-- 2) Create a table called link with columns; link_id(serial, primary), title(varchar), url(varchar)
-- CREATE TABLE link(
-- link_id serial PRIMARY KEY,
-- title VARCHAR(512) NOT NULL,
-- url VARCHAR(1024) NOT NULL UNIQUE);

-- 3) Add new column into link table called active with type boolean.
-- ALTER TABLE link ADD COLUMN active boolean;

-- 4) Remove active column from link table created in previous exercise.
-- ALTER TABLE link DROP COLUMN active;

-- 5) Rename title column of link table to 'new_title_name'.
-- ALTER TABLE link RENAME COLUMN title TO new_title_name;

-- 6)Rename link table to 'url_table'.
-- ALTER TABLE link RENAME TO url_table;