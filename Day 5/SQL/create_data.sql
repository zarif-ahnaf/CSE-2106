INSERT INTO Member (ID, Name, Membership_Date) VALUES
(1, 'Alice Johnson', '2023-01-15'),
(2, 'Bob Smith', '2023-03-22'),
(3, 'Carol White', '2023-06-10'),
(4, 'David Brown', '2023-07-30'),
(5, 'Eve Davis', '2024-01-01'),
(6, 'Taylor Davis', '2023-02-26');

INSERT INTO Book (ID, Title, Category, Author) VALUES
(1, 'The Great Gatsby', 'Fiction', 'F. Scott Fitzgerald'),
(2, 'To Kill a Mockingbird', 'Fiction', 'Harper Lee'),
(3, 'A Brief History of Time', 'Non-Fiction', 'Stephen Hawking'),
(4, 'The Art of War', 'Philosophy', 'Sun Tzu'),
(5, 'The Catcher in the Rye', 'Fiction', 'J.D. Salinger');

INSERT INTO BorrowedBook (ID, Book_ID, Member_ID, Borrowed_Date) VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-02-15'),
(3, 3, 3, '2024-03-01'),
(4, 4, 4, '2024-04-20'),
(5, 5, 2, '2024-05-05'),
(6, 2, 5, '2024-06-10'),
(7, 1, 3, '2024-07-01');