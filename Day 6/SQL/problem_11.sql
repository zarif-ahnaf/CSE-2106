SELECT username 
FROM Users 
WHERE user_id NOT IN (
    SELECT user_id FROM Submissions
);
