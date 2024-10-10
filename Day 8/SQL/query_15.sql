SELECT Passenger.FirstName, Passenger.LastName
FROM Passenger
JOIN Reservation ON Passenger.PassengerID = Reservation.PassengerID
JOIN Train ON Reservation.TrainID = Train.TrainID
WHERE Train.Destination = 'Mumbai';
