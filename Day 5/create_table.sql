DELIMITER $$

CREATE TABLE Member(
    ID INT PRIMARY KEY,
    Name TEXT,
    Membership_Date DATE
) $$

CREATE TABLE Book(
    ID INT PRIMARY KEY,
    Title TEXT,
    Category TEXT,
    Author TEXT
) $$ 

CREATE TABLE BorrowedBook(
    ID INT PRIMARY KEY,
    Book_ID INT,
    Member_ID INT,
    Borrowed_Date DATE,
    FOREIGN KEY(Book_ID) REFERENCES Book(ID),
    FOREIGN KEY(Member_ID) REFERENCES Member(ID)
) $$

DELIMITER $$