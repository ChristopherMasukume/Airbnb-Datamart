SELECT address.id, city.name AS City, state.name AS State, 
country.name AS Country, region.name AS Region,
address.street_name AS Street
FROM ((((address
INNER JOIN city ON address.city_id = city.id)
INNER JOIN state ON address.state_id = state.id)
INNER JOIN country ON address.country_id = country.id)
INNER JOIN region ON address.region_id = region.id);