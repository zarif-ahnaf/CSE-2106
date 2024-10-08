DELIMITER $$

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100),
    registration_date DATE,
    rating INT
) $$

CREATE TABLE Contests (
    contest_id INT PRIMARY KEY,
    contest_name VARCHAR(100),
    start_date DATE,
    end_date DATE
) $$

CREATE TABLE Problems (
    problem_id INT PRIMARY KEY,
    problem_name VARCHAR(100),
    difficulty VARCHAR(20),
    contest_id INT,
    FOREIGN KEY (contest_id) REFERENCES Contests(contest_id)
) $$

CREATE TABLE Submissions (
    submission_id INT PRIMARY KEY,
    user_id INT,
    problem_id INT,
    submission_time TIMESTAMP,
    verdict VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (problem_id) REFERENCES Problems(problem_id)
) $$

CREATE TABLE Languages(
    language_id INT PRIMARY KEY,
    language_name VARCHAR(50)
) $$

CREATE TABLE Submission_Languages(
    submission_id INT,
    language_id INT,
    FOREIGN KEY (submission_id) REFERENCES Submissions(submission_id),
    FOREIGN KEY (language_id) REFERENCES Languages(language_id)
) $$

DELIMITER $$