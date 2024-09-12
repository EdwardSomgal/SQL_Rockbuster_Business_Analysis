SELECT 
		MIN(customer_id) AS min_customer_id, 
		MAX(customer_id) AS max_customer_id,
		AVG(customer_id) AS avg_customer_id,
		MIN(store_id) AS min_store_id,
		MAX(store_id) AS max_store_id,
		AVG(store_id) AS avg_store_id,
		MIN(address_id) AS min_address_id,
		MAX(address_id) AS max_address_id,
		AVG(address_id) AS avg_address_id,
		MIN(active) AS min_active,
		MAX(active) AS max_active,
		AVG(active) AS avg_active,
		MIN(active) AS min_active,
		MAX(active) AS max_active,
		AVG(active) AS avg_active,
		MIN(create_date) AS min_create_date,
		MAX(create_date) AS max_create_date
FROM customer
