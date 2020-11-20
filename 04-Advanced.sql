-- 04-Advanced
-- Covered: time stamp, extract, operators, round, char_length, string concatenation, lower, sub query, self join

-- 1) Select payment_date column from payment table.
SELECT payment_date FROM payment;

-- 2) Select day of month from payment_date column of payment table.
-- SELECT extract(day FROM payment_date) FROM payment;
-- SELECT customer_id, extract(day FROM payment_date) FROM payment;
-- SELECT customer_id, extract(day FROM payment_date) AS day FROM payment;

-- 3) Select highest selling month from payment table with showing amount and month number.
-- SELECT SUM(amount) as total, extract(month FROM payment_date) AS month FROM payment GROUP BY month ORDER BY total DESC LIMIT 1;

-- 4) Create a new id by summing customer_id and rental_id columns from payment_table.
-- SELECT customer_id+rental_id AS new_id FROM payment;
-- SELECT customer_id-rental_id AS new_id FROM payment;
-- SELECT customer_id*rental_id AS new_id FROM payment;
-- SELECT rental_id/customer_id AS new_id FROM payment;

-- 5) Find average of amount from payment table by rounding to 2 decimal digits.
-- SELECT round(AVG(amount), 2) FROM payment;

-- 6) Concatenate first_name and last_name columns in customer table.
-- SELECT first_name||last_name FROM customer;
-- SELECT first_name||' '||last_name AS full_name FROM customer;

-- 7) Find length of first_name strings in customer table.
-- SELECT first_name, char_length(first_name) FROM customer;

-- 8) Convert first_name strings to lower in customer table.
-- SELECT first_name, lower(first_name) FROM customer;

-- 9) Find films whose rental rate is higher than the average rental rate.
-- SELECT title, rental_rate FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

-- 10) Find films which are returned between dates 29/05/2005 and 30/05/2005.
-- SELECT inventory.film_id FROM rental INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

-- 11) Select film_id and title of films from film table which are returned between dates 29/05/2005 and 30/05/2005.
-- SELECT film_id, title FROM film WHERE film_id IN
--	(SELECT inventory.film_id FROM rental INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30');

-- 12) Find customers whose first_name matches with other customer's last name.
-- SELECT a.first_name, a.last_name, b.first_name, b.last_name FROM customer AS a, customer AS b WHERE a.first_name = b.last_name;
-- SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name FROM customer AS a, customer AS b WHERE a.first_name = b.last_name;
-- SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name FROM customer AS a JOIN customer AS b ON a.first_name = b.last_name ORDER BY a.customer_id;
-- SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name FROM customer AS a LEFT JOIN customer AS b ON a.first_name = b.last_name ORDER BY a.customer_id;