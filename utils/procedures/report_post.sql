CREATE PROCEDURE ReportPost(
    IN postID INT,
    IN userID INT,
    IN reportReason TEXT
)
BEGIN
    INSERT INTO PostReports (PostID, UserID, ReportReason)
    VALUES (postID, userID, reportReason);
END;

