SELECT p.id AS 'Property ID', host_id AS 'Host ID', 
property_type_id AS 'Property type', room_type_id AS 'Room type' 
FROM airbnb.property AS p
JOIN airbnb.property_type AS pt ON p.property_type_id = pt.id
JOIN airbnb.room_type AS plt ON p.room_type_id = plt.id
