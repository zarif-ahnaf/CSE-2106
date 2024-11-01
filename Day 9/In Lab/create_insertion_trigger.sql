CREATE TRIGGER insertionTrigger
AFTER INSERT ON Test
FOR EACH ROW
INSERT INTO Test1 (id1, test1) VALUES (NEW.id, NEW.test);

