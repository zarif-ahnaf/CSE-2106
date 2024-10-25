DELIMITER $$

Create table Passengers(
    PassengerID int primary key,
    FirstName text,
    LastName text,
    Email text
) $$

create table Aircraft(
    AircraftID int Primary key,
    Model text,
    Capacity int,
    Status text
) $$ 

CREATE TABLE Flights(
    FlightID INT Primary key,
    AircraftID int,
    DepartureCity text,
    ArrivalCity text,
    DepartureTime DateTIme,
    ArrivalTime DateTIme,
    Foreign key(AircraftID) references Aircraft(AircraftID)
) $$


Create table Bookings(
    BookingID int primary key,
    FlightID int,
    PassengerID int,
    SeatNumber TEXT,
    Foreign key(FlightID) references Flights(FlightID),
    Foreign key(PassengerID) references Passengers(PassengerID)
) $$

DELIMITER $$