DELIMITER $$

CREATE TABLE Sales_Details(SID int NOT NULL PRIMARY KEY AUTO_INCREMENT, Unit_Price float,Unit_Sales int, Sales_Area TEXT) $$

CREATE TABLE Product_Details(PID int NOT NULL PRIMARY KEY AUTO_INCREMENT, Product_Name text,Product_type text DEFAULT "Snacks",Manufacture_Date DATE,Expire_Date DATE, Sales_ID int NOT NULL) $$

DELIMITER ;