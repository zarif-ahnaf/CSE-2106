-- select Aircraft.AircraftID, Aircraft.Model, Aircraft.Capacity, Aircraft.Status from Aircraft right join Flights on Aircraft.AircraftID = Flights.AircraftID  right join Bookings on  bookings.FlightID = Flights.FlightID where bookings.BookingID is null;

Select Aircraft.AircraftID, Aircraft.Model, Aircraft.Capacity, Aircraft.Status from Aircraft join flights on flights.AircraftID = aircraft.AircraftID left join Bookings on bookings.FlightID = flights.FlightID where bookings.BookingID is null;