-- Insert Users
INSERT INTO Users (user_id, username, email, registration_date, rating) VALUES
(1, 'Alice', 'alice@example.com', '2022-01-10', 1900),  -- Has not participated in any contest
(2, 'Bob', 'bob@example.com', '2022-02-15', 1500),     -- Submitted multiple contests
(3, 'Charlie', 'charlie@example.com', '2022-03-20', 1200),  -- Solved only easy problems
(4, 'David', 'david@example.com', '2022-04-25', 1700), -- Solved hard problems
(5, 'Eve', 'eve@example.com', '2022-05-15', 1300);     -- Solved at least one in first contest

-- Insert Contests
INSERT INTO Contests (contest_id, contest_name, start_date, end_date) VALUES
(1, 'Winter Contest', '2023-12-01', '2023-12-05'),
(2, 'Spring Contest', '2024-03-10', '2024-03-15'),
(3, 'Summer Contest', '2024-06-20', '2024-06-25');

-- Insert Problems
INSERT INTO Problems (problem_id, problem_name, difficulty, contest_id) VALUES
(1, 'Simple Problem', 'easy', 1),   -- Used by Charlie (Easy-only user)
(2, 'Challenging Problem', 'medium', 1), 
(3, 'Complex Problem', 'hard', 2),  -- Solved by David (hard-only user)
(4, 'Hard Problem', 'hard', 3),     -- Never solved problem
(5, 'Medium Problem', 'medium', 2); -- Used by Bob (Multiple contests)

-- Insert Submissions
INSERT INTO Submissions (submission_id, user_id, problem_id, submission_time, verdict) VALUES
(1, 2, 1, '2023-12-01 10:00:00', 'Accepted'),  -- Bob solved
(2, 2, 5, '2024-03-12 14:00:00', 'Accepted'),  -- Bob solved multiple contests
(3, 3, 1, '2023-12-02 10:30:00', 'Accepted'),  -- Charlie solved only easy problems
(4, 4, 3, '2024-03-12 11:00:00', 'Accepted'),  -- David solved hard problem
(5, 5, 1, '2023-12-01 09:30:00', 'Accepted'),  -- Eve solved at least one in first contest
(6, 4, 4, '2024-06-22 11:00:00', 'Rejected');  -- Hard problem never solved

-- Insert Languages
INSERT INTO Languages (language_id, language_name) VALUES
(1, 'Python'),
(2, 'C++'),
(3, 'JavaScript');

-- Insert Submission_Languages
INSERT INTO Submission_Languages (submission_id, language_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 3),
(6, 1);

-- Update and insert
UPDATE `contests` SET `contest_name` = 'New Year Contest', `start_date` = '2023-12-29', `end_date` = '2024-01-02' WHERE `contests`.`contest_id` = 4; 