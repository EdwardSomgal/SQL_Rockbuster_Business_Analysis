/* Query to find the top 10 countries for Rockbuster in terms of customer
numbers. */

/* customer –> address → city –> country */

SELECT D.country,
COUNT(A.customer_id) AS count_of_customers
FROM customer A
	INNER JOIN address B ON A.address_id = B.address_id
	INNER JOIN city C ON B.city_id = C.city_id
	INNER JOIN country D ON C.country_id = D.country_id
GROUP BY country
ORDER BY count_of_customers DESC
LIMIT 10;