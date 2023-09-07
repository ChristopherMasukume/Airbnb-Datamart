SELECT id AS 'Property ID', price AS 'Property Price',
CASE
	WHEN price > 700 THEN 'Expensive'
    WHEN price > 200 THEN 'Affordable'
    ELSE 'Cheap'
END AS 'Price'
FROM airbnb.property