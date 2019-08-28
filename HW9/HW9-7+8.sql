-- 7A --
SELECT * 
	FROM film
    WHERE title LIKE "K%" OR title LIKE "Q%"
		AND language_id = 1;
        
-- 7B --
SELECT actor.first_name, actor.last_name 
	FROM actor
    LEFT JOIN film_actor ON (actor.actor_id = film_actor.actor_id)
    WHERE film_id = 17;
    
-- 7C --
SELECT first_name, last_name, email 
	FROM customer
    LEFT JOIN address ON (customer.address_id = address.address_id)
	WHERE city_id IN (SELECT city_id FROM city WHERE country_id = 20);
    
-- 7D -- 
SELECT film.title 
	FROM film_category
	LEFT JOIN film ON (film_category.film_id = film.film_id)
    WHERE category_id = 8;
    
-- 7E --
SELECT film.title, COUNT(rental.inventory_id)
	FROM rental
    LEFT JOIN inventory ON (rental.inventory_id = inventory.inventory_id)
    LEFT JOIN film ON (inventory.film_id = film.film_id)
    GROUP BY film.title
    ORDER BY COUNT(rental.inventory_id) DESC LIMIT 5;
    
-- 7F --
SELECT staff.store_id, SUM(payment.amount) 
	FROM payment
    LEFT JOIN staff ON (staff.staff_id = payment.staff_id)
    GROUP BY staff.store_id;

-- 7G -- 
SELECT store.store_id, city.city, country.country 
	FROM store
    RIGHT JOIN address ON (store.address_id = address.address_id)
    RIGHT JOIN city ON (address.city_id = city.city_id)
    RIGHT JOIN country ON (city.country_id = country.country_id)
    GROUP BY store.store_id;
    
-- 7H --
SELECT category.name, SUM(payment.amount) AS "Gross Revenue"
	FROM payment
    RIGHT JOIN rental ON (payment.rental_id = rental.rental_id)
    RIGHT JOIN inventory ON (rental.inventory_id = inventory.inventory_id)
    RIGHT JOIN film_category ON (inventory.film_id = film_category.film_id)
    RIGHT JOIN category ON (film_category.category_id = category.category_id)
    GROUP BY category.name
    ORDER BY SUM(payment.amount) DESC LIMIT 5;
    
-- 8A -- 
CREATE VIEW top_five_genres AS 
	SELECT category.name, SUM(payment.amount) AS "Gross Revenue"
	FROM payment
    RIGHT JOIN rental ON (payment.rental_id = rental.rental_id)
    RIGHT JOIN inventory ON (rental.inventory_id = inventory.inventory_id)
    RIGHT JOIN film_category ON (inventory.film_id = film_category.film_id)
    RIGHT JOIN category ON (film_category.category_id = category.category_id)
    GROUP BY category.name
    ORDER BY SUM(payment.amount) DESC LIMIT 5;
    
-- 8B --
-- In the drop down menu for Sakila > Views > top_five_genres --

-- 8C -- 
DROP VIEW top_five_genres;
    
