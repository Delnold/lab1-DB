DELIMITER //
CREATE FUNCTION AddChangeLogEntry(
    in_tableName VARCHAR(255),
    in_recordID INT,
    in_actionType ENUM('INSERT', 'UPDATE', 'DELETE'),
    in_userID INT
)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    INSERT INTO ChangeLog (TableName, RecordID, ActionType, UserID)
    VALUES (in_tableName, in_recordID, in_actionType, in_userID);

    RETURN TRUE;
END
//
DELIMITER ;
