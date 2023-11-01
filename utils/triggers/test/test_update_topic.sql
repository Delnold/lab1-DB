START TRANSACTION;
UPDATE Topics
SET Title = 'Updated Title'
WHERE TopicID = 1;

SELECT *
FROM ChangeLog
WHERE TableName = 'Topics'
  AND ActionType = 'UPDATE'
  AND RecordID = 1;
COMMIT;
