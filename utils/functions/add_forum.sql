DELIMITER //
CREATE FUNCTION AddForum(
    in_forumName VARCHAR(255),
    in_description TEXT,
    in_createdBy INT
)
RETURNS INT
NO SQL
BEGIN
    DECLARE newForumID INT;

    INSERT INTO Forums (ForumName, Description, CreatedBy)
    VALUES (in_forumName, in_description, in_createdBy);

    SET newForumID = LAST_INSERT_ID();

    RETURN newForumID;
END
//
DELIMITER ;
