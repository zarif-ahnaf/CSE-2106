DELIMITER $$

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email varchar(100),
    phone_number varchar(20),
    address varchar(1000)
) $$

CREATE TABLE Train (
    train_id int primary key,
     train_name varchar(50),
    departure_station varchar(30),
    departure_time TIME,
    arrival_time TIME
) $$

CREATE TABLE Tickets (
    ticket_id int PRIMARY key,
    train_id INT,
    customer_id int,
    booking_date DATE,
    seat_number Varchar(3),
    price DECIMAL,
    FOREIGN KEY (train_id) REFERENCES Train(train_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
) $$

CREATE TABLE Bookings (
    booking_id int PRIMARY key,
    customer_id Int,
    ticket_id int,
    status Varchar(20),
    payment_method varchar(20),
    payment_status varchar(20),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)

) $$