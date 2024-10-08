SELECT DISTINCT language_name 
FROM Languages 
WHERE language_id IN (
    SELECT language_id FROM Submission_Languages
);
