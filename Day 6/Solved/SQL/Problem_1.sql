SELECT * from Users where user_id NOT in (
    SELECT distinct user_id from Submissions
)