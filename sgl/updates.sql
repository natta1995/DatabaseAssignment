
-- SQL-skript för att uppdatera data i tabellerna Users och Posts

-- 1. Uppdatera ett användarnamn
UPDATE Users
SET Username = 'anna_updated'
WHERE Id = 1;

-- 2. Uppdatera texten i ett inlägg
UPDATE Posts
SET PostText = 'Hello, this is my updated first post!'
WHERE Id = 1;
