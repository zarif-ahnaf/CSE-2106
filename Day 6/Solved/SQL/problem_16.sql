SELECT username, 
       (SELECT COUNT(s.submission_id) 
        FROM Submissions s 
        WHERE s.user_id = u.user_id 
        AND s.verdict = 'Accepted') AS problems_solved
FROM Users u;
