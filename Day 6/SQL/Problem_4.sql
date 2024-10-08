SELECT language_name
FROM Languages L
WHERE (
    SELECT COUNT(*)
    FROM Submission_Languages SL
    WHERE SL.language_id = L.language_id
) = (
    SELECT MAX(language_count)
    FROM (
        SELECT language_id, COUNT(*) AS language_count
        FROM Submission_Languages
        GROUP BY language_id
    ) AS language_stats
);