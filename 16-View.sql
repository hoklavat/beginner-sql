-- 16-View
-- database: dvdrental database

-- 1) Select first_name, last_name, email, address, phone columns from customer and address tables by joining two tables.
SELECT first_name, last_name, email, address, phone FROM customer JOIN address ON customer.address_id = address.address_id;

-- 2) Create view (virtual table) called customer_info for previous query.
-- CREATE VIEW customer_info AS
-- SELECT first_name, last_name, email, address, phone FROM customer JOIN address ON customer.address_id = address.address_id;

-- 3) Show all content of customer_info view created on previous example.
-- SELECT * FROM customer_info;

-- 4) Rename customer_info view to customer_master_list.
-- ALTER VIEW customer_info RENAME TO customer_master_list;

-- 5) Delete customer_master_list view.
-- DROP VIEW customer_master_list;
-- DROP VIEW IF EXISTS customer_master_list;