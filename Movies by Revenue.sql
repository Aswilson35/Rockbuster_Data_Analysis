# Creating a query to find all the movies by revenue to see which contributed the least and most to Rockbuster

SELECT D.title, D.film_id,
SUM(A.amount) AS total_revenue
FROM payment A
INNER JOIN rental B ON A.rental_id = B.rental_id
INNER JOIN inventory C ON B.inventory_id = C.inventory_id
INNER JOIN film D ON C.film_id = D.film_id 
GROUP BY D.title, D.film_id
ORDER BY total_revenue DESC
