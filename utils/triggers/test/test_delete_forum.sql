-- Start a transaction
START TRANSACTION;

INSERT INTO Forums (ForumName, Description, CreatedBy)
VALUES ('New Forum', 'Description of the new forum', 1);

SELECT LAST_INSERT_ID() INTO @newForumID;

DELETE FROM Forums WHERE ForumID = @newForumID;

COMMIT;

SELECT * FROM ChangeLog WHERE TableName = 'Forums' AND ActionType = 'DELETE' AND RecordID = @newForumID;
