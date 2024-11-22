ALTER TABLE Flights add FlightStatus varchar(20) default 'Scheduled';


DELETE from bookings where bookings.SeatNumber in ("15B");