DELIMITER $$

CREATE TABLE Passenger(
    PassengerID INT Primary KEY,
    FirstName TEXT,
    LastName TEXT,
    Age INT,
    Gender Text,
    Phone Text
) $$

CREATE TABLE Train(
    TrainID INT PRIMary KEY,
    TrainName Text,
    Source Text,
    Destination TEXT,
    DepartureTime TIME,
    ArrivalTime TIME
) $$

CREATE TABLE Reservation (
    ReservationID INT Primary KEY,
    PassengerID INT,
    FOREIGN KEY(PassengerID) References Passenger(PassengerID),
    TrainID INT,
    FOREIGN KEY(TrainID) References Train(TrainID),
    SeatNumber TEXT,
    ReservationDate DATE,
    Status Text
) $$

CREATE TABLE Payment (
    PaymentID Int PRIMary KEY,
    PassengerID INT,
    FOREIGN KEY (PassengerID) References Passenger(PassengerID),
    Amount INT,
    PaymentDate DATE,
    PaymentStatus Text
) $$