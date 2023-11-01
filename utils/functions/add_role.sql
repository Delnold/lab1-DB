DELIMITER //
CREATE FUNCTION AddUserRole(
    in_roleName VARCHAR(50)
)
RETURNS INT
NO SQL
BEGIN
    DECLARE newUserRoleID INT;

    INSERT INTO UserRoles (RoleName)
    VALUES (in_roleName);

    SET newUserRoleID = LAST_INSERT_ID();

    RETURN newUserRoleID;
END;
//
DELIMITER ;