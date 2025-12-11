
-- LAGT TILL INFO I TABLES 

-- Users
INSERT INTO Users (Username, Password, Email) VALUES
('anna', 'password123', 'anna@example.com'),
('erik', 'secret456', 'erik@example.com'),
('lena', 'mypass789', 'lena@example.com'),
('oscar', 'oscarpass', 'oscar@example.com');

-- Posts
INSERT INTO Posts (UserId, PostText) VALUES
(1, 'Hello, this is my first post!'),
(1, 'I love working with SQL.'),
(2, 'Just had a great coffee.'),
(2, 'Today I learned about JOINs.'),
(3, 'Databases are starting to make sense.'),
(4, 'First day on this social app!');

-- Likes
INSERT INTO Likes (UserId, PostId) VALUES
(2, 1),
(3, 1),
(4, 1),
(1, 3),
(3, 3),
(1, 4),
(2, 5),
(4, 6);