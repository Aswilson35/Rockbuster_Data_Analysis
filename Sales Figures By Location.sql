This is a SQL query to find the sales figures between geographical locations.

SELECT E.country,
SUM(A.amount) AS total_revenue
FROM payment A
INNER JOIN customer B ON A.customer_id = B.customer_id
INNER JOIN address C ON B.address_id = C.address_id
INNER JOIN city D ON C.city_id = D.city_id
INNER JOIN country E ON D.country_id = E.country_id
GROUP BY E.country
ORDER BY total_revenue DESC
