This is an SQL query to find out where the high lifetime value customers are based.

WITH cte_CustomerLocation (customer, first, last, country, city, total_paid) AS
(SELECT A.customer_id, B.first_name, B.last_name, E.country, D.city,
SUM(amount) AS total_paid
FROM payment A
INNER JOIN customer B ON A.customer_id = B.customer_id
INNER JOIN address C ON B.address_id = C.address_id
INNER JOIN city D ON C.city_id = D.city_id
INNER JOIN country E ON D.country_id = E.country_id
GROUP BY A.customer_id, B.first_name, B.last_name, E.country, D.city
ORDER BY total_paid DESC)
SELECT country, COUNT(country)
FROM cte_CustomerLocation
WHERE total_paid > 102
GROUP BY country
ORDER BY count DESC
LIMIT 10;
