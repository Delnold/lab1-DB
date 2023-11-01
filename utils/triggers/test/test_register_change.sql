START TRANSACTION;

INSERT INTO Users (Username, Email, PasswordHash)
VALUES ('newuser', 'newuser@example.com', 'password123');

SELECT *
FROM ChangeLog
WHERE TableName = 'Users'
  AND ActionType = 'INSERT'
  AND RecordID = LAST_INSERT_ID();

COMMIT;