CREATE TRIGGER UserRegistrationTrigger
AFTER INSERT ON Users
FOR EACH ROW
BEGIN
    INSERT INTO ChangeLog (TableName, RecordID, ActionType, UserID)
    VALUES ('Users', NEW.UserID, 'INSERT', NEW.UserID);
END;