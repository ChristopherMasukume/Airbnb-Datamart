SELECT host_id AS 'Host ID', P.language_name
FROM airbnb.host_language AS hl
JOIN airbnb.language AS P
ON language_id = P.id
WHERE host_id <= 20 ORDER BY host_id ASC;