INSERT INTO Users (Username, Email, PasswordHash)
VALUES ('testuser', 'testuser@example.com', 'passwordhash');

SELECT *
FROM UserRolesMapping
WHERE UserID = (SELECT UserID FROM Users WHERE Username = 'testuser');
