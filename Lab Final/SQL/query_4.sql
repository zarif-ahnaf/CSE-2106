SELECT * FROM flights natural join Aircraft where Aircraft.status in ("Active","Inactive");