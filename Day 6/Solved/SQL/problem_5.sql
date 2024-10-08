SELECT username
FROM Users U
WHERE NOT EXISTS (
    SELECT 1
    FROM Submissions S
    JOIN Problems P ON S.problem_id = P.problem_id
    WHERE S.user_id = U.user_id AND P.difficulty != 'easy'
);
