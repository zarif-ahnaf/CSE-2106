-- Insert data into Passenger table
INSERT INTO Passenger VALUES
(1, 'John', 'Doe', 45, 'Male', '555-1234'),
(2, 'Jane', 'Smith', 32, 'Female', '555-5678'),
(3, 'Raj', 'Kumar', 28, 'Male', '555-8765'),
(4, 'Emily', 'Clark', 36, 'Female', '555-3456'),
(5, 'Michael', 'Brown', 52, 'Male', '555-1122');

-- Insert data into Train table
INSERT INTO Train VALUES
(1, 'Rajdhani Express', 'Delhi', 'Mumbai', '09:00:00', '18:00:00'),
(2, 'Shatabdi Express', 'Delhi', 'Amritsar', '07:30:00', '12:30:00'),
(3, 'Rajkumar Express', 'Kolkata', 'Chennai', '10:00:00', '20:00:00'),
(4, 'Duronto Express', 'Bangalore', 'Delhi', '06:00:00', '16:30:00');

-- Insert data into Reservation table
INSERT INTO Reservation VALUES
(1001, 1, 1, 'A1', '2023-10-01', 'Confirmed'),
(1002, 2, 1, 'A2', '2023-10-01', 'Confirmed'),
(1003, 3, 2, 'B1', '2023-09-30', 'Confirmed'),
(1004, 4, 3, 'C1', '2023-09-29', 'Cancelled'),
(1005, 5, 4, 'D1', '2023-10-02', 'Confirmed');

-- Insert data into Payment table
INSERT INTO Payment VALUES
(2001, 1, 1200, '2023-09-25', 'Completed'),
(2002, 2, 1500, '2023-09-26', 'Completed'),
(2003, 3, 900, '2023-09-27', 'Pending'),
(2004, 5, 2000, '2023-09-28', 'Completed');
