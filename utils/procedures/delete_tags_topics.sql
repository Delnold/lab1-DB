CREATE PROCEDURE DeleteTopicAndPosts(
    IN topicID INT
)
BEGIN
    DELETE FROM Posts WHERE TopicID = topicID;
    DELETE FROM Topics WHERE TopicID = topicID;
END;
