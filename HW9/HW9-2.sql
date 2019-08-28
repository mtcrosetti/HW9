-- 2A --
SELECT actor_id, first_name, last_name 
	FROM actor
    WHERE first_name = "Joe";

-- 2B --
SELECT actor_id, first_name, last_name
	FROM actor
    WHERE last_name LIKE "%GEN%";
    
-- 2C --
SELECT actor_id, first_name, last_name
	FROM actor
	WHERE last_name LIKE "%LI%"
    ORDER BY last_name, first_name;
    
-- 2D --
SELECT country_id, country
	FROM country
    WHERE country IN ("Afghanistan", "Bangladesh", "China");