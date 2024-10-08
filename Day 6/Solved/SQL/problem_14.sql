SELECT problem_name 
FROM Problems p
WHERE p.problem_id IN (
    SELECT s.problem_id 
    FROM Submissions s 
    WHERE s.user_id = (SELECT u.user_id FROM Users u WHERE u.username = 'Mr. X')
);
