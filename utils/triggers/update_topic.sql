CREATE TRIGGER TopicUpdateTrigger
AFTER UPDATE ON Topics
FOR EACH ROW
BEGIN
    INSERT INTO ChangeLog (TableName, RecordID, ActionType, UserID)
    VALUES ('Topics', NEW.TopicID, 'UPDATE', NEW.CreatedBy);
END;