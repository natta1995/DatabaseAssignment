 
 -- Ta bort en användare (exempel: ta bort användare med ID 3)

-- Ta bort en like (exempel: användare 2 ångrar sin like på post 1)
DELETE FROM Likes
WHERE UserId = 2 AND PostId = 1;
