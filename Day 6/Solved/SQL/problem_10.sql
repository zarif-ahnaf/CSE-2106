SELECT username
FROM Users U
WHERE (
    SELECT COUNT(*)
    FROM Submissions S
    JOIN Problems P ON S.problem_id = P.problem_id
    WHERE S.user_id = U.user_id AND P.difficulty = 'hard' AND S.verdict = 'Accepted'
) = (
    SELECT MAX(solved_count)
    FROM (
        SELECT user_id, COUNT(*) AS solved_count
        FROM Submissions
        JOIN Problems ON Submissions.problem_id = Problems.problem_id
        WHERE Problems.difficulty = 'hard' AND Submissions.verdict = 'Accepted'
        GROUP BY user_id
    ) AS hard_problem_solvers
)
LIMIT 5;
