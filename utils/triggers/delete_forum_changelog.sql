CREATE TRIGGER ForumDeletionTrigger
AFTER DELETE ON Forums
FOR EACH ROW
BEGIN
    INSERT INTO ChangeLog (TableName, RecordID, ActionType, UserID)
    VALUES ('Forums', OLD.ForumID, 'DELETE', OLD.CreatedBy);
END;
