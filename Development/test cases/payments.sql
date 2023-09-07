SELECT booking_id AS 'Reservation', total_price AS 'Payment Made', 
payment_date AS 'Date'FROM airbnb.payments
ORDER BY payment_date DESC;