-- 03-Join
-- Covered: AS, INNER JOIN, ON

-- 1) Select payment_id column from payment table, and alias with my_payment_column.
SELECT payment_id AS my_payment_column FROM payment;

-- 2) Find total amount of payment for each customer, and alias it with total_spent.
-- SELECT customer_id, SUM(amount) AS total_spent FROM payment GROUP BY customer_id;

-- 3) Combine first_name, last_name, email columns of customer table and amount, payment_date columns of payment table.
-- SELECT  customer.customer_id, first_name, last_name, email, amount, payment_date FROM customer INNER JOIN payment ON payment.customer_id = customer.customer_id;
-- ORDER BY first_name;
-- WHERE customer.customer_id = 2;
-- WHERE customer.first_name LIKE 'A%';

-- 4) Combine payment_id, amount columns of payment table and first_name, last_name columns of staff table by staff_id column.
-- SELECT payment_id, amount, first_name, last_name FROM payment INNER JOIN staff ON payment.staff_id = staff.staff_id;

-- 5) Combine store_id column of inventory table and title column of film table by film_id column.
-- SELECT store_id, title FROM inventory INNER JOIN film ON inventory.film_id = film.film_id;
-- WHERE store_id = 1;

-- 6) Find total amount of each film in inventory of store with id 1 by listing with film titles.
-- SELECT title, COUNT(title) FROM inventory INNER JOIN film ON inventory.film_id = film.film_id WHERE store_id = 1 GROUP BY title;
-- SELECT title, COUNT(title) AS copies_at_store1 FROM inventory INNER JOIN film ON inventory.film_id = film.film_id WHERE store_id = 1 GROUP BY title;
-- SELECT title, COUNT(title) AS copies_at_store1 FROM inventory INNER JOIN film ON inventory.film_id = film.film_id WHERE store_id = 1 GROUP BY title ORDER BY title;

-- 7) Select title and language of all films.
-- SELECT film.title, language.name FROM film INNER JOIN language ON language.language_id = film.language_id;
-- SELECT film.title, language.name AS movie_language FROM film INNER JOIN language ON language.language_id = film.language_id;
-- SELECT title, name AS movie_language FROM film INNER JOIN language ON language.language_id = film.language_id;
-- SELECT title, name AS movie_language FROM film INNER JOIN language AS lan ON lan.language_id = film.language_id;
-- SELECT title, name movie_language FROM film INNER JOIN language lan ON lan.language_id = film.language_id;

-- 8) Select all films by title and id which don't exist in inventory.
-- SELECT film.film_id, title, inventory_id FROM film LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id WHERE inventory_id IS NULL;
-- SELECT film.film_id, title, inventory_id FROM film LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id WHERE inventory.film_id IS NULL;
-- SELECT film.film_id, title, inventory_id FROM film LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id WHERE inventory.film_id IS NULL ORDER BY film_id;