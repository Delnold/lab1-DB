DELIMITER //
CREATE FUNCTION AddPost(
    in_content TEXT,
    in_createdBy INT,
    in_topicID INT
)
RETURNS INT
NO SQL
BEGIN
    DECLARE newPostID INT;

    INSERT INTO Posts (Content, CreatedBy, TopicID)
    VALUES (in_content, in_createdBy, in_topicID);

    SET newPostID = LAST_INSERT_ID();

    RETURN newPostID;
END;
//
DELIMITER ;
