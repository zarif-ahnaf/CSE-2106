SELECT username
FROM Users U
WHERE EXISTS (
    SELECT 1
    FROM Submissions S
    JOIN Problems P ON S.problem_id = P.problem_id
    WHERE S.user_id = U.user_id
    AND S.verdict = 'Accepted'
    AND P.contest_id = (
        SELECT MIN(contest_id)
        FROM Submissions
        JOIN Problems ON Submissions.problem_id = Problems.problem_id
        WHERE Submissions.user_id = U.user_id
    )
);
