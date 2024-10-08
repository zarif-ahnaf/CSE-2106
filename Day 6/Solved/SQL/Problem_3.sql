SELECT username FROM Users
WHERE (
    SELECT COUNT(distinct contest_id) 
    FROM Submissions
    JOIN Problems
    ON Submissions.problem_id = Problems.problem_id
    WHERE Submissions.user_id = Users.user_id
) > 1;