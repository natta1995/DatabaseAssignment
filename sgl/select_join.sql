
-- SQL-frågor för att demonstrera JOIN-operationer mellan tabellerna Users, Posts och Likes

-- 1. Visa alla posts tillsammans med användarnamn
SELECT 
    Posts.Id,
    Posts.PostText,
    Users.Username
FROM Posts
JOIN Users ON Posts.UserId = Users.Id;

-- 2. Visa alla posts tillsammans med användarnamn och antal likes
SELECT 
    Posts.Id,
    Posts.PostText,
    Users.Username,
    COUNT(Likes.Id) AS LikeCount
FROM Posts
JOIN Users ON Posts.UserId = Users.Id
LEFT JOIN Likes ON Posts.Id = Likes.PostId
GROUP BY Posts.Id, Posts.PostText, Users.Username;

-- 3. Visa alla användare och deras posts (även de som inte har några)
SELECT 
    Users.Username,
    Posts.PostText
FROM Users
LEFT JOIN Posts ON Users.Id = Posts.UserId;

-- 4. Visa vilka posts en viss användare har gillat (exempel: user 'anna')
SELECT 
    Users.Username,
    Posts.PostText
FROM Likes
JOIN Users ON Likes.UserId = Users.Id
JOIN Posts ON Likes.PostId = Posts.Id
WHERE Users.Username = 'anna';
