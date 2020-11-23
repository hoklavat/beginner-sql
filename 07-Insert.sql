-- 07-Insert
-- Covered: INSERT 

-- 1) Create a table called link with columns: ID(serial, primary), url(varchar), name(varchar), description(varchar), rel(varchar).
CREATE TABLE link(
ID SERIAL PRIMARY KEY,
url VARCHAR(255) NOT NULL,
name VARCHAR(255) NOT NULL,
description VARCHAR(255),
rel VARCHAR(50));

-- 2) Insert row for columns on link table such as; url('www.google.com') and name('google') 
-- INSERT INTO link(url, name) VALUES('www.google.com', 'Google');
-- INSERT INTO link(url, name) VALUES('www.yahoo.com', 'Yahoo');

-- 3) Insert multiple rows at once for columns on link table such as; url('www.bing.com', 'www.amazon.com') and name('Bing', 'Amazon') 
-- INSERT INTO link(url, name) VALUES('www.bing.com', 'Bing'), ('www.amazon.com', 'Amazon');

-- 4) Create a table by copying same schema of link table.
-- CREATE TABLE link_copy (LIKE link);
-- CREATE TABLE link_copy LIKE (link);

-- 5) Copy row from link table into link_copy table, where value of name column is 'Bing' in that row.
-- INSERT INTO link_copy SELECT * FROM link WHERE name='Bing';

-- 6) Copy all rows from link table into link_copy table.
-- INSERT INTO link_copy SELECT * FROM link;