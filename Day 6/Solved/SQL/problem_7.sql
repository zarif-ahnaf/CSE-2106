SELECT contest_name
FROM Contests C
WHERE (
    SELECT COUNT(*)
    FROM Problems P
    WHERE P.contest_id = C.contest_id
) = (
    SELECT MAX(problem_count)
    FROM (
        SELECT contest_id, COUNT(*) AS problem_count
        FROM Problems
        GROUP BY contest_id
    ) AS contest_problem_stats
);
