-- 5A --
SHOW CREATE TABLE address;

-- 6A -- 
SELECT first_name, last_name, address.address
	FROM staff
    LEFT JOIN address ON staff.address_id = address.address_id;
    
-- 6B --
SELECT staff_id, SUM(payment.amount) 
	FROM payment
	WHERE payment_date BETWEEN CAST('2005-08-01' AS DATE) AND CAST('2005-08-30' AS DATE)
	GROUP BY staff_id;

-- 6C -- (COME BACK)
SELECT film.title, COUNT(film.actor_id) 
	FROM film
    INNER JOIN film_actor ON film.film_id
    GROUP BY film_actor.film_id;
    
-- 6D -- 
SELECT title, COUNT(inventory.film_id)
	FROM inventory
    LEFT JOIN film ON (inventory.film_id = film.film_id)
	WHERE title = "HUNCHBACK IMPOSSIBLE";
    
-- 6E -- 
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount)
	FROM customer
    LEFT JOIN payment ON (customer.customer_id = payment.customer_id)
    GROUP BY customer_id;