SELECT problem_name,
       (SELECT AVG(HOUR(submission_time) + MINUTE(submission_time) / 60 + SECOND(submission_time) / 3600)
        FROM Submissions S
        WHERE S.problem_id = P.problem_id) AS avg_hours
FROM Problems P;
