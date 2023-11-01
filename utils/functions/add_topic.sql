DELIMITER //
CREATE FUNCTION AddTopic(
    in_title VARCHAR(255),
    in_content TEXT,
    in_createdBy INT,
    in_forumID INT
)
RETURNS INT
NO SQL
BEGIN
    DECLARE newTopicID INT;

    INSERT INTO Topics (Title, Content, CreatedBy, ForumID)
    VALUES (in_title, in_content, in_createdBy, in_forumID);

    SET newTopicID = LAST_INSERT_ID();

    RETURN newTopicID;
END;
//
DELIMITER ;