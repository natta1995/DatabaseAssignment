
-- SKAPAR TABLES I DATABASEN FÖR USERS, POST OCH LIKES

CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,            -- PK
    Username NVARCHAR(50) NOT NULL UNIQUE,       -- unikt användarnamn
    Password NVARCHAR(200) NOT NULL,             -- i riktig app: hash, ej klartext
    Email NVARCHAR(100) NULL                     -- valfritt
);

CREATE TABLE Posts (
    Id INT IDENTITY(1,1) PRIMARY KEY,            -- PK
    UserId INT NOT NULL,                         -- FK till Users
    PostText NVARCHAR(500) NOT NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    FOREIGN KEY (UserId) REFERENCES Users(Id)    -- kopplar Post → User
);

CREATE TABLE Likes (
    Id INT IDENTITY(1,1) PRIMARY KEY,            -- PK för varje like
    UserId INT NOT NULL,                         -- vem gillade
    PostId INT NOT NULL,                         -- vilket inlägg

    FOREIGN KEY (UserId) REFERENCES Users(Id),
    FOREIGN KEY (PostId) REFERENCES Posts(Id),

    -- extra säkerhet: samma user kan inte gilla samma post två gånger
    CONSTRAINT UQ_Likes_User_Post UNIQUE (UserId, PostId)
);