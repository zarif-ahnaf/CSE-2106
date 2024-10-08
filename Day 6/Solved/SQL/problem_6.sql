SELECT problem_name
FROM Problems P
WHERE NOT EXISTS (
    SELECT 1
    FROM Submissions S
    WHERE S.problem_id = P.problem_id AND S.verdict = 'Accepted'
);
