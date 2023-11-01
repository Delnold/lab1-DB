START TRANSACTION;

UPDATE Users
SET Username = 'UpdatedUsername'
WHERE UserID = 1;

SELECT LastLogin
FROM Users
WHERE UserID = 1;
COMMIT;