-- 02-Group.sql
-- Covered: MIN, MAX, AVG, SUM, ROUND

--1) Find average of amounts in payment table.
-- SELECT AVG(amount) FROM payment;
-- SELECT ROUND(AVG(amount), 2) FROM payment; -- show only 2 decimal digits.

-- 2) Select minimum amount from payment table.
-- SELECT MIN(amount) FROM payment;

-- 3) Find total number of amounts equal to 0.
-- SELECT COUNT(amount) FROM payment WHERE amount=0.00;

-- 4) Select maximum amount from payment table.
-- SELECT MAX(amount) FROM payment;

-- 5) Find sum of all amounts in payment table.
-- SELECT SUM(amount) FROM payment;

-- 6) Select customer_id from payment table and group all duplicated customer_ids into one.
-- SELECT customer_id FROM payment GROUP BY customer_id;

-- 7) Find sum of all amounts made by a specific customer.
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id;
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC; -- order by descending

-- 8) Find total number of payments made to each staff.
-- SELECT staff_id, COUNT(payment_id) FROM payment GROUP BY staff_id;
-- SELECT staff_id, COUNT(*) FROM payment GROUP BY staff_id;
-- SELECT staff_id, SUM(amount), COUNT(*) FROM payment GROUP BY staff_id; -- show total amount paid to each staff.

-- 9) Find total number of films having specific type of rating.
-- SELECT rating, COUNT(rating) FROM film GROUP BY rating;
-- SELECT rating, COUNT(rating), AVG(replacement_cost) FROM film GROUP BY rating; -- show average replacement cost for each type of rating.

-- 10) Find total number of films having specific value of rental_duration.
-- SELECT rental_duration, COUNT(rental_duration) FROM film GROUP BY rental_duration;

-- 11) Find average of rental_rate for films having specific type of rating.
-- SELECT rating, AVG(rental_rate) FROM film GROUP BY rating;

-- 12) Find customer_id and total amount of payment of top five spenders.
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;

-- 13) Find customer_ids and total amounts of payments for customers who paid more than 200.
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount)>200;

-- 14) Select stores those are having more than 300 customers.
-- SELECT store_id, COUNT(customer_id) FROM customer GROUP BY store_id HAVING COUNT(customer_id)>300;

-- 15) Select rental_rate of films having rating type R, G or PG.
-- SELECT rating, rental_rate FROM film WHERE rating IN ('R', 'G', 'PG');

-- 16) Find average rental_rate for films having rating type R, G or PG those have rental_rate lower than 3.
-- SELECT rating, AVG(rental_rate) FROM film WHERE rating IN ('R', 'G', 'PG') GROUP BY rating HAVING AVG(rental_rate)<3;

-- 17) Select customers who have made more than 40 payment transactions.
-- SELECT customer_id, COUNT(amount) FROM payment GROUP BY customer_id HAVING COUNT(amount)>40;

-- 18) Select rating types having average rental duration more than 5 days.
-- SELECT rating, AVG(rental_duration) FROM film GROUP BY rating HAVING AVG(rental_duration)>5;

-- 19) Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.
-- SELECT customer_id, SUM(amount) FROM payment WHERE staff_id=2 GROUP BY customer_id HAVING SUM(amount)>110;

-- 20) How many films begin with the letter J?
-- SELECT COUNT(*) FROM film WHERE title LIKE 'J%';
-- SELECT title FROM film WHERE title LIKE 'J%';

-- 21) What customer has the highest customer ID number whose name starts with an 'E' and has an address ID lower than 500?
-- SELECT customer_id, first_name, address_id FROM customer WHERE first_name LIKE 'E%' AND address_id<500 ORDER BY customer_id DESC LIMIT 1;