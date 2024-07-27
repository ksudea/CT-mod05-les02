CREATE DATABASE fitness_center_db;

USE fitness_center_db;
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT);
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

# Task 1
INSERT INTO Members (id, name, age)
VALUES (112, 'Jane Doe', 25),
	(513,'John Smith', 30),
    (302,'Alice Temple', 42),
    (134, 'Brandon Bottle', 36),
    (349, 'Clarissa Adams', 20);

INSERT INTO WorkoutSessions(session_id, member_id, session_date,
session_time, activity)
VALUES(101, 112, '2024-07-27', '11 AM', 'Personal Training'),
	(102, 112, '2024-07-29', '7 AM', 'Cardio'),
    (103, 513, '2024-07-30', '8 PM', 'Weightlifting'),
    (104, 513, '2024-08-01', '7 PM', 'Pilates'),
    (105, 302, '2024-08-01', '7 PM', 'Pilates'),
    (106, 302, '2024-08-03', '6 PM', 'Cardio'),
    (107, 134, '2024-07-26', '2 PM', 'Weightlifting'),
    (108, 134, '2024-07-30', '8 PM', 'HIIT'),
    (109, 349, '2024-07-28', '7 PM', 'Yoga'),
    (110, 349, '2024-07-30', '6 AM', 'Weightlifting');
    
# Task 2

UPDATE WorkoutSessions
SET session_time = '7 PM'
WHERE session_id = 102;

# Task 3
DELETE FROM WorkoutSessions
WHERE member_id = 513;

DELETE FROM Members
WHERE id = 513;

