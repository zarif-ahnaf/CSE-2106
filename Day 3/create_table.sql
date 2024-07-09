DELIMITER $$

CREATE TABLE Teacher (
  TID int NOT NULL AUTO_INCREMENT, 
  Teacher_Name text, 
  PRIMARY KEY (TID)
) $$

CREATE TABLE Project (
  PID int NOT NULL AUTO_INCREMENT, 
  Project_Name text, 
  TID int, 
  PRIMARY KEY (PID), 
  FOREIGN KEY (TID) REFERENCES Teacher(TID)
) $$

CREATE TABLE Merit_Student (
  SID int NOT NULL, 
  Name varchar(255), 
  Batch int, 
  CGPA float, 
  PID int, 
  PRIMARY KEY (SID), 
  FOREIGN KEY (PID) REFERENCES Project(PID)
) $$

DELIMITER ;
