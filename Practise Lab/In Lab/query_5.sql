select Customer.name, Customer.phone_number from Customer natural join bookings natural join train where train.train_name like "Bangladesh Express";