-- Find the names of members who have not borrowed any books.
SELECT name FROM MEMBER WHERE ID NOT in (SELECT Member_ID from BorrowedBook);