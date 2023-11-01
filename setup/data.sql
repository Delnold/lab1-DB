-- Заполнение таблицы Users случайными данными
INSERT INTO Users (Username, Email, PasswordHash, RegistrationDate, LastLogin)
VALUES
    ('user1', 'user1@example.com', 'password1', '2023-10-25', '2023-10-30'),
    ('user2', 'user2@example.com', 'password2', '2023-10-20', '2023-10-28'),
    ('user3', 'user3@example.com', 'password3', '2023-10-22', '2023-10-29');

-- Заполнение таблицы Forums случайными данными
INSERT INTO Forums (ForumName, Description, CreatedBy, CreationDate)
VALUES
    ('Forum 1', 'Description 1', 1, '2023-10-26'),
    ('Forum 2', 'Description 2', 2, '2023-10-21'),
    ('Forum 3', 'Description 3', 3, '2023-10-23');

-- Заполнение таблицы Topics случайными данными
INSERT INTO Topics (Title, Content, CreatedBy, ForumID, CreationDate)
VALUES
    ('Topic 1', 'Content 1', 1, 1, '2023-10-27'),
    ('Topic 2', 'Content 2', 2, 2, '2023-10-22'),
    ('Topic 3', 'Content 3', 3, 3, '2023-10-24');

-- Заполнение таблицы Posts случайными данными
INSERT INTO Posts (Content, CreatedBy, TopicID, CreationDate)
VALUES
    ('Post 1', 1, 1, '2023-10-28'),
    ('Post 2', 2, 2, '2023-10-23'),
    ('Post 3', 3, 3, '2023-10-25');

-- Заполнение таблицы ChangeLog случайными данными
INSERT INTO ChangeLog (TableName, RecordID, ActionType, UserID, ChangeDate)
VALUES
    ('Users', 1, 'INSERT', 1, '2023-10-29'),
    ('Forums', 2, 'UPDATE', 2, '2023-10-24'),
    ('Topics', 3, 'DELETE', 3, '2023-10-26');

-- Заполнение таблицы UserRoles случайными данными
INSERT INTO UserRoles (RoleName)
VALUES
    ('Admin'),
    ('Moderator'),
    ('User');

-- Заполнение таблицы UserRolesMapping случайными данными
INSERT INTO UserRolesMapping (UserID, UserRoleID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы PostRatings случайными данными
INSERT INTO PostRatings (PostID, UserID, Rating)
VALUES
    (1, 1, 5),
    (2, 2, 4),
    (3, 3, 3);

-- Заполнение таблицы PostReplies случайными данными
INSERT INTO PostReplies (ParentPostID, Content, CreatedBy, CreationDate)
VALUES
    (1, 'Reply 1', 2, '2023-10-28'),
    (2, 'Reply 2', 3, '2023-10-27'),
    (3, 'Reply 3', 1, '2023-10-26');

-- Заполнение таблицы FavoriteTopics случайными данными
INSERT INTO FavoriteTopics (UserID, TopicID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы ForumSubscriptions случайными данными
INSERT INTO ForumSubscriptions (UserID, ForumID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы PostReports случайными данными
INSERT INTO PostReports (PostID, UserID, ReportReason)
VALUES
    (1, 2, 'Spam'),
    (2, 3, 'Offensive'),
    (3, 1, 'Inappropriate');

-- Заполнение таблицы FavoriteForums случайными данными
INSERT INTO FavoriteForums (UserID, ForumID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы Tags случайными данными
INSERT INTO Tags (TagName)
VALUES
    ('Tag1'),
    ('Tag2'),
    ('Tag3');

-- Заполнение таблицы TopicTags случайными данными
INSERT INTO TopicTags (TopicID, TagID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы PrivateMessages случайными данными
INSERT INTO PrivateMessages (SenderID, ReceiverID, MessageText, SendDate)
VALUES
    (1, 2, 'Hello', '2023-10-28'),
    (2, 3, 'Hi', '2023-10-27'),
    (3, 1, 'Hey', '2023-10-26');
