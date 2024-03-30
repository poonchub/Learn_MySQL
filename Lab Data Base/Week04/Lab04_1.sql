SELECT * FROM sakila.actor;

SELECT city_id, city, country_id 
FROM sakila.city
WHERE country_id = 44
LIMIT 10;

SELECT * FROM sakila.city
WHERE city LIKE '%city';

SELECT COUNT(*) AS count_rental
FROM sakila.rental
WHERE  return_date > '2005-05-25' AND return_date < '2005-05-27'
ORDER BY return_date 
LIMIT 5;

SELECT customer_id,SUM(amount) FROM sakila.payment
WHERE customer_id = 1
GROUP BY  customer_id;

SELECT COUNT(*) AS count_film
FROM sakila.film_text;

SELECT COUNT(first_name) AS count_first_name
FROM sakila.customer
WHERE first_name LIKE 'A%' OR '%A';

SELECT rating,AVG(length) 
FROM sakila.film
GROUP BY rating;

SELECT customer_id, staff_id, MAX(amount) AS rental_amount 
FROM sakila.payment 
WHERE amount > 10
GROUP BY customer_id, staff_id
ORDER BY staff_id DESC;