CREATE TRIGGER AddUserRoleOnUserCreateTrigger
AFTER INSERT ON Users
FOR EACH ROW
BEGIN
    INSERT INTO UserRolesMapping (UserID, UserRoleID)
    VALUES (NEW.UserID, 3);
END;