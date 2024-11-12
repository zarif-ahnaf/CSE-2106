-- Add mock data to the Customer table
INSERT INTO Customer (customer_id, name, email, phone_number, address)
VALUES
    (1, 'John Doe', 'john.doe@example.com', '0123456789', 'Dhaka'),
    (2, 'Jane Smith', 'jane.smith@example.com', '0987654321', 'Chattogram'),
    (3, 'Alice Johnson', 'alice.johnson@example.com', '0234567891', 'Dhaka'),
    (4, 'Bob Brown', 'bob.brown@example.com', '0876543210', 'Sylhet');

-- Add mock data to the Train table
INSERT INTO Train (train_id, train_name, departure_station, departure_time, arrival_time)
VALUES
    (1, 'Bangladesh Express', 'Dhaka', '09:00:00', '14:00:00'),
    (2, 'Chattogram Mail', 'Chattogram', '10:00:00', '15:00:00'),
    (3, 'Sylhet Intercity', 'Sylhet', '08:30:00', '13:30:00');

-- Add mock data to the Tickets table
INSERT INTO Tickets (ticket_id, train_id, customer_id, booking_date, seat_number, price)
VALUES
    (1, 1, 1, '2024-11-01', 'A1', 600),
    (2, 2, 2, '2024-11-02', 'B1', 450),
    (3, 1, 3, '2024-11-03', 'A2', 550),
    (4, 3, 4, '2024-11-04', 'C1', 700),
    (5, 1, 2, '2024-11-05', 'A3', 600);

-- Add mock data to the Bookings table
INSERT INTO Bookings (booking_id, customer_id, ticket_id, status, payment_method, payment_status)
VALUES
    (1, 1, 1, 'Confirmed', 'Credit Card', 'Paid'),
    (2, 2, 2, 'Confirmed', 'Cash', 'Paid'),
    (3, 3, 3, 'Cancelled', 'Credit Card', 'Refunded'),
    (4, 4, 4, 'Confirmed', 'Debit Card', 'Paid'),
    (5, 2, 5, 'Confirmed', 'Cash', 'Paid');

-- Add more mock data to the Customer table
INSERT INTO Customer (customer_id, name, email, phone_number, address)
VALUES
    (5, 'Charlie Green', 'charlie.green@example.com', '0212345678', 'Dhaka'),
    (6, 'David Lee', 'david.lee@example.com', '0981122334', 'Chattogram'),
    (7, 'Emma Wilson', 'emma.wilson@example.com', '0567890123', 'Khulna'),
    (8, 'Fiona Brown', 'fiona.brown@example.com', '0345678901', 'Dhaka');

-- Add more mock data to the Train table
INSERT INTO Train (train_id, train_name, departure_station, departure_time, arrival_time)
VALUES
    (4, 'Chattogram Express', 'Chattogram', '11:00:00', '16:00:00'),
    (5, 'Dhaka Local', 'Dhaka', '07:30:00', '12:30:00'),
    (6, 'Khulna Express', 'Khulna', '09:15:00', '14:15:00');

-- Add more mock data to the Tickets table
INSERT INTO Tickets (ticket_id, train_id, customer_id, booking_date, seat_number, price)
VALUES
    (6, 4, 5, '2024-11-06', 'B2', 550),
    (7, 4, 6, '2024-11-06', 'B3', 650),
    (8, 5, 5, '2024-11-07', 'D1', 500),
    (9, 5, 7, '2024-11-08', 'D2', 400),
    (10, 6, 8, '2024-11-09', 'E1', 750),
    (11, 6, 5, '2024-11-10', 'E2', 800),
    (12, 4, 1, '2024-11-11', 'B4', 700),
    (13, 5, 3, '2024-11-11', 'D3', 600),
    (14, 6, 4, '2024-11-12', 'E3', 550),
    (15, 5, 2, '2024-11-13', 'D4', 450);

-- Add more mock data to the Bookings table
INSERT INTO Bookings (booking_id, customer_id, ticket_id, status, payment_method, payment_status)
VALUES
    (6, 5, 6, 'Confirmed', 'Credit Card', 'Paid'),
    (7, 6, 7, 'Confirmed', 'Cash', 'Paid'),
    (8, 5, 8, 'Confirmed', 'Debit Card', 'Paid'),
    (9, 7, 9, 'Pending', 'Credit Card', 'Unpaid'),
    (10, 8, 10, 'Confirmed', 'Credit Card', 'Paid'),
    (11, 5, 11, 'Confirmed', 'Mobile Payment', 'Paid'),
    (12, 1, 12, 'Cancelled', 'Credit Card', 'Refunded'),
    (13, 3, 13, 'Confirmed', 'Cash', 'Paid'),
    (14, 4, 14, 'Confirmed', 'Credit Card', 'Paid'),
    (15, 2, 15, 'Confirmed', 'Debit Card', 'Paid');


-- Add more ticket data to meet the requirement of having more than 5 tickets for at least one train
INSERT INTO Tickets (ticket_id, train_id, customer_id, booking_date, seat_number, price)
VALUES
    (16, 1, 6, '2024-11-14', 'A4', 650),
    (17, 1, 7, '2024-11-15', 'A5', 700),
    (18, 1, 8, '2024-11-16', 'A6', 600),
    (19, 1, 5, '2024-11-17', 'A7', 675),
    (20, 1, 1, '2024-11-18', 'A8', 680);
INSERT INTO Tickets (ticket_id, train_id, customer_id, booking_date, seat_number, price)
VALUES
    (21, 5, 6, '2024-11-19', 'D5', 520);

INSERT INTO Tickets (ticket_id, train_id, customer_id, booking_date, seat_number, price)
VALUES
    (22, 5, 7, '2024-11-20', 'D6', 480);
