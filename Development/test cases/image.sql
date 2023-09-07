SELECT i.property_id AS Property, concat(u.first_name, ' ' , u.last_name) 
AS 'Uploaded by' , i.image_name AS 'Image Title' 
FROM airbnb.image AS i JOIN airbnb.user AS u ON i.user = u.id 
ORDER BY property_id;