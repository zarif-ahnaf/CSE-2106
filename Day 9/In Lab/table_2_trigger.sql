DELIMITER //

CREATE OR REPLACE TRIGGER finaluser
BEFORE INSERT OR UPDATE OR DELETE ON username
FOR EACH ROW
BEGIN
    -- Handling INSERT operation
    IF (NEW.id IS NOT NULL) THEN
        INSERT INTO username_backup (id, username)
        VALUES (NEW.id, NEW.username);
    END IF;

    -- Handling DELETE operation
    IF (OLD.id IS NOT NULL) THEN
        DELETE FROM username_backup
        WHERE id = OLD.id;
    END IF;

    -- Handling UPDATE operation
    IF (NEW.id IS NOT NULL AND OLD.id IS NOT NULL) THEN
        UPDATE test1
        SET username1 = NEW.username
        WHERE id1 = NEW.id;
    END IF;
END; //

DELIMITER ;
