SELECT Category from Book
EXCEPT
SELECT DISTINCT Book.Category FROM Book
JOIN BorrowedBook ON Book.ID = BorrowedBook.Book_ID;