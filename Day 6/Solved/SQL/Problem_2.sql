SELECT contest_name, AVG(
    CASE
        WHEN difficulty = 'easy' THEN 1
        WHEN difficulty = 'medium' THEN 2
        WHEN difficulty = 'hard' THEN 3
        ELSE 0
    END
) as average_difficulty
FROM Contests
JOIN Problems on Contests.contest_id = Problems.problem_id
GROUP BY contest_name;