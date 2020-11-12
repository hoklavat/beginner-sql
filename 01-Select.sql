--01-SELECT
--Covered: SELECT, *, FROM, DISTINCT, AND, OR, COUNT, LIMIT, ORDER BY, ASC, DESC, BETWEEN, IN, LIKE, ILIKE, operators, string patterns and wildcards (%, _).

--1) Select all columns from actor table.
SELECT * FROM actor;

--2) Select actor_id column from actor table.
--SELECT actor_id FROM actor;

--3) Select first_name and last_name columns from actor table.
--SELECT first_name, last_name FROM actor;

--4) Select first_name, last_name, email columns from actor table.
--SELECT first_name, last_name, email FROM customer;

--5) Select release_year column from film table. don't select same year more than once.
--SELECT DISTINCT release_year FROM film;

--6) Select rating column from film table. don't select same rating more than once.
--SELECT DISTINCT rating FROM film;

--7) Select customers whose first name is Jamie from customer table.
--SELECT first_name, last_name FROM customer WHERE first_name='Jamie';

--8) Select customers whose full name is Jamie Rice from customer table.
--SELECT first_name, last_name FROM customer WHERE first_name='Jamie' AND last_name='Rice';  select customers with first name Jamie and last name Rice.

--9) Select payment amounts less than 1 or greater than 8 from payment table.
--SELECT customer_id, amount, payment_date FROM payment WHERE amount<=1 OR amount>=8;

--10) Select email address of customer whose first_name is Jared.
--SELECT email FROM customer WHERE first_name='Jared';

--11) Select all payments those are less than 5.
--SELECT * FROM payment WHERE amount<5;

--12) Select payment amounts which are equal to 4.99 or 1.99.
--SELECT amount, payment_date FROM payment WHERE amount=4.99 OR amount=1.99;

--13) Select all customers whose store_id is 1 and address_id is greater than 5.
--SELECT * FROM customer WHERE store_id=1 AND address_id>=5;

--14) Select all customers whose store_id is 1 or address_id is 2.
--SELECT * FROM customer WHERE store_id=1 OR store_id=2;

--15) Select email address of customer whose full name is Nancy Thomas.
--SELECT email FROM customer WHERE first_name='Nancy' AND last_name='Thomas';

--16) Select description of film which has title Outlaw Hanky.
--SELECT description FROM film WHERE title='Outlaw Hanky';

--17) Select phone number for address 259 Ipoh Drive.
--SELECT phone FROM address WHERE address='259 Ipoh Drive';

--18) Find total number of payments.
--SELECT COUNT(*) FROM payment;

--19) Find number of amounts paid. all amounts should be unique.
--SELECT COUNT(DISTINCT(amount)) FROM payment;

--20) Select first 5 customers from customer table.
--SELECT * FROM customer LIMIT 5;

--21) Select first_name and last_name from customer table by showing first_names in ascending order.
--SELECT first_name, last_name FROM customer ORDER BY first_name ASC;

--22) Select first_name and last_name from customer table by showing first_names in descending order.
--SELECT first_name, last_name FROM customer ORDER BY last_name DESC;  order query result by last_name in descending order.

--23) Select first_name and last_name from customer table by showing first_name in ascending order then last_name with same first_name in descending order.
--SELECT first_name, last_name FROM customer ORDER BY first_name ASC, last_name DESC;

--24) Select first_name from customer table. sort table by last_name in descending order.
--SELECT first_name FROM customer ORDER BY last_name DESC;  only in postgresql.

--25) Select top 10 customers with highest payments. show amount of payment in descending order.
--SELECT customer_id, amount FROM payment ORDER BY amount DESC LIMIT 10;

--26) Select films having id from 1 to 5.
--SELECT film_id, title, release_year FROM film ORDER BY film_id LIMIT 5;

--27) Select payments with amounts between 8 and 9.
--SELECT customer_id, amount FROM payment WHERE amount BETWEEN 8 AND 9;

--28) Select payments with amounts less than 8, greater than 9, or not between 8 and 9.
--SELECT customer_id, amount FROM payment WHERE amount NOT BETWEEN 8 AND 9;

--29) Select payments made between '2007-02-07' and '2007-02-15.'
--SELECT amount, payment_date FROM payment WHERE payment_date BETWEEN '2007-02-07' AND '2007-02-15';

--30) Select customer_id which is 1 or 2, with return_date in descending order.
--SELECT customer_id, rental_id, return_date FROM rental WHERE customer_id IN (1,2) ORDER BY return_date DESC;

--31) Select payments with amounts 7.99 or 8.99.
--SELECT * FROM payment WHERE amount IN (7.99, 8.99)

--32) Select customers whose first_name starts with Jen. case sensitive.
--SELECT first_name, last_name FROM customer WHERE first_name LIKE 'Jen%';

--33) Select customers whose first_name doesn't start with Jen. case sensitive.
--SELECT first_name, last_name FROM customer WHERE first_name NOT LIKE 'Jen%';

--33) Select names containing 'er' sequence.
--SELECT first_name, last_name FROM customer WHERE first_name LIKE '%er%';

--34) Select names starting with any character and continues with 'her' sequence. case sensitive.
--SELECT first_name, last_name FROM customer WHERE first_name LIKE '_her%';

--35) Select names starting with case insensitive combinations of 'bar'.
--SELECT first_name, last_name FROM customer WHERE first_name ILIKE 'BaR%';

--36) Select count of payments larger than 5.
--SELECT COUNT(amount) FROM payment WHERE amount > 5;

--37) Select actor names starting with P.
--SELECT COUNT(*) FROM actor WHERE first_name LIKE 'P%';

--38) Find number of unique districts which customers reside.
--SELECT COUNT(DISTINCT(district)) FROM address;

--39) Show name of districts, without displaying same district more than once.
--SELECT DISTINCT(district) FROM address ORDER BY district;

--40) Select films with rating R and replacement_cost between 5 and 15.
--SELECT COUNT(*) FROM film WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

--41) Select count of films with title containing 'Truman' sequence in case-insensitive mode.
--SELECT COUNT(*) FROM film WHERE title ILIKE ('%Truman%')