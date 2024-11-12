select Customer.name from customer where customer.address = 'Dhaka'
UNION
SELECT customer.name from Customer natural join bookings natural join tickets natural join train where train.departure_station = "Chattogram"; 