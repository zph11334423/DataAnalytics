SELECT DISTINCT first_name, last_name, title, release_year
FROM actor
JOIN film_actor AS f ON actor.actor_id = f.actor_id
JOIN film AS q ON f.film_id = q.film_id 
WHERE q.rating = 'NC-17'
ORDER BY last_name, first_name
LIMIT 3