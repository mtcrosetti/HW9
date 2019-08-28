-- 4A --
SELECT last_name, COUNT(*)
FROM actor
GROUP BY last_name;

-- 4B --
SELECT last_name, COUNT(*)
FROM actor
GROUP BY last_name HAVING COUNT(*) > 1;

-- 4C --
SELECT actor_id, first_name, last_name
	FROM actor
    WHERE first_name = "GROUCHO" AND last_name = "WILLIAMS";

UPDATE actor
	SET first_name = "HARPO"
	WHERE first_name = "GROUCHO" AND last_name = "WILLIAMS";

SELECT actor_id, first_name, last_name
	FROM actor
    WHERE first_name = "HARPO" AND last_name = "WILLIAMS";
    
-- 4D --
UPDATE actor
	SET first_name = "GROUCHO"
    WHERE first_name = "HARPO" AND last_name = "WILLIAMS";
    
SELECT actor_id, first_name, last_name
	FROM actor
    WHERE actor_id = 172;
