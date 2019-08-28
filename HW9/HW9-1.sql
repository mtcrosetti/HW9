-- 1A -- 
SELECT first_name, last_name
	FROM actor;
    
-- 1B -- 
SELECT 
CONCAT (first_name, " ", last_name) AS "Actor Name"
FROM actor;
