SELECT Reservation.ReservationID, Passenger.FirstName, Passenger.LastName, Train.TrainName from Reservation NATURAL JOIN Passenger NATURAL JOIN Train;