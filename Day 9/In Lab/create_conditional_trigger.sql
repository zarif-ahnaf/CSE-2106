DELIMITER //

CREATE OR REPLACE TRIGGER conditionTrigger
BEFORE UPDATE ON Test
FOR EACH ROW
BEGIN
    -- Check if updating is true; you can specify your own condition here
    IF (NEW.status IS NOT NULL) THEN
        -- Delete rows from table2 where the corresponding rows do not exist in table1
        DELETE FROM table2
        WHERE id NOT IN (SELECT id FROM table1);
    END IF;
END; //

DELIMITER ;
