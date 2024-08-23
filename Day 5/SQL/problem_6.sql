-- Members with membership dates in 2023
SELECT ID FROM Member WHERE Membership_Date BETWEEN '2023-01-01' AND '2024-12-31'

INTERSECT

-- Members who borrowed books in 2023
SELECT Member_ID FROM BorrowedBook WHERE Borrowed_Date BETWEEN '2023-01-01' AND '2024-12-31';
