USE sakila ;

#For each film, list actor that has acted in more films
SELECT film_actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS "Actor", COUNT(film_actor.film_id) AS "Number of films" FROM film_actor
JOIN actor ON
film_actor.actor_id = actor.actor_id
GROUP BY film_actor.actor_id
ORDER BY COUNT(film_actor.film_id) DESC ;

SELECT film_actor.film_id, film.title, film_actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS "Actor" FROM film_actor
JOIN film ON
film_actor.film_id = film.film_id
JOIN actor ON
film_actor.actor_id = actor.actor_id ;
