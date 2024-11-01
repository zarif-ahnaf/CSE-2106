DELIMITER //

CREATE OR REPLACE TRIGGER whenTrigger 
AFTER INSERT ON Test 
FOR EACH ROW 
BEGIN 
    IF (NEW.id > 1) Then
        INSERT INTO test (id, test_column)  -- Specify the columns if they differ
        VALUES (NEW.id, NEW.test);
    end if;
END //

DELIMITER ;
