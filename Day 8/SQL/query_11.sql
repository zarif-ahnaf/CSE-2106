SELECT Passenger.FirstName, Passenger.LastName FROM Passenger RIGHT JOIN Reservation ON Reservation.PassengerId = Passenger.PassengerID Right JOIN Payment on Payment.PassengerID = Passenger.PassengerID Where Payment.PaymentStatus != 'Completed' AND Payment.PaymentID IS NOT NULL AND Reservation.ReservationID IS NOT NULL;