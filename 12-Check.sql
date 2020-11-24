-- 12-Check
-- Covered: CHECK

-- 1) Create a table called new_users with columns: id(serial, primary), first_name(varchar), birth_date(date), join_date(date), salary(integer).
--    constraints; birth_date should be greter than '1900-01-01', join_date should be greater than birth_date and salary should be greater than 0.
CREATE TABLE new_users(
id serial PRIMARY KEY,
first_name VARCHAR(50),
birth_date DATE CHECK(birth_date > '1900-01-01'),
join_date DATE CHECK(join_date > birth_date),
salary integer CHECK(salary > 0));

-- 2) Insert new row into new_users table as first_name='Joe', birth_date='1980-02-02', join_date='1990-04-04' and salary=100.
-- INSERT INTO new_users(first_name, birth_date, join_date, salary) VALUES('Joe', '1980-02-02', '1990-04-04', 100);

-- 3) Observe results of statements below.
-- CREATE TABLE check_test(sales integer CONSTRAINT positive_sales CHECK(sales>0));
-- INSERT INTO check_test(sales) VALUES(10);
-- INSERT INTO check_test(sales) VALUES(-12); -- gives error