This is a SQL query to find the average rental duration for all movies in the Rockbuster library.

SELECT COUNT(film_id) AS count_film_id,
AVG(rental_rate) AS avg_rental_rate,
MIN(rental_rate) AS min_rental_rate,
MAX(rental_rate) AS max_rental_rate,
AVG(length) AS avg_length,
MIN(length) AS min_length,
MAX(length) AS max_length,
AVG(replacement_cost) AS avg_replacement_cost,
MIN(replacement_cost) AS min_replacement_cost,
MAX(replacement_cost) AS max_replacement_cost,
AVG(rental_duration) AS avg_rental_duration,
MIN(rental_duration) AS min_rental_duration,
MAX(rental_duration) AS max_rental_duration,
FROM film
