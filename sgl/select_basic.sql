
-- SQL-exempel för grundläggande SELECT-frågor

-- 1. Visa alla användare
SELECT Id, Username, Email
FROM Users;

-- 2. Hitta en specifik användare med WHERE
SELECT *
FROM Users
WHERE Username = 'erik';

-- 3. Visa alla poster i fallande datumordning
SELECT Id, PostText, CreatedAt
FROM Posts
ORDER BY CreatedAt DESC;

-- 4. Hitta alla användare vars namn börjar på 'a'
SELECT *
FROM Users
WHERE Username LIKE 'a%';

-- 5. Räkna hur många poster varje användare har
SELECT UserId, COUNT(*) AS NumberOfPosts
FROM Posts
GROUP BY UserId;

-- 6. Räkna hur många likes varje post har totalt
SELECT PostId, COUNT(*) AS LikeCount
FROM Likes
GROUP BY PostId;
