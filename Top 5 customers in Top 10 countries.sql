/* Top 5 customers from the top 10 cities who’ve paid the
highest total amounts to Rockbuster. */

SELECT 
		B.customer_id,
		B.first_name,
		B.last_name,
		E.country,
		D.city,
SUM (A.amount) AS total_amount_paid
FROM payment A
		JOIN customer B ON A.customer_id = B.customer_id
		JOIN address C ON B.address_id = C.address_id
		JOIN city D ON C.city_id = D.city_id
		JOIN country E ON D.country_id = E.country_id
		WHERE D.city in (
							SELECT D.city
							FROM customer B
								JOIN address C ON B.address_id = C.address_id
								JOIN city D ON C.city_id = D.city_id
								JOIN country E ON D.country_id = E.country_id
								WHERE E.country IN (
													SELECT E.country
													FROM customer B
														JOIN address C ON B.address_id = C.address_id
														JOIN city D ON C.city_id = D.city_id
														JOIN country E ON D.country_id = E.country_id
														GROUP BY E.country
														ORDER BY COUNT(B.customer_id) DESC
													LIMIT 10
													)
							GROUP BY E.country, D.city
							ORDER BY COUNT(B.customer_id) DESC
							LIMIT 10
						)
		GROUP BY
		B.customer_id,
		B.first_name,
		B.last_name,
		E.country,
		D.city
ORDER BY SUM(A.amount) DESC
LIMIT 5;