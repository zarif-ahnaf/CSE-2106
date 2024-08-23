SELECT Title FROM Book
EXCEPT
SELECT Book.Title FROM Book
JOIN BorrowedBook ON Book.ID = BorrowedBook.Book_ID;