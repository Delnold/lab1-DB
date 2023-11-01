CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    RegistrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    LastLogin TIMESTAMP,
    UNIQUE (Username, Email)
);

CREATE TABLE Forums (
    ForumID INT PRIMARY KEY AUTO_INCREMENT,
    ForumName VARCHAR(255) NOT NULL,
    Description TEXT,
    CreatedBy INT,
    CreationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CreatedBy) REFERENCES Users(UserID)
);

CREATE TABLE Topics (
    TopicID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Content TEXT,
    CreatedBy INT,
    ForumID INT,
    CreationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CreatedBy) REFERENCES Users(UserID),
    FOREIGN KEY (ForumID) REFERENCES Forums(ForumID)
);

CREATE TABLE Posts (
    PostID INT PRIMARY KEY AUTO_INCREMENT,
    Content TEXT,
    CreatedBy INT,
    TopicID INT,
    CreationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CreatedBy) REFERENCES Users(UserID),
    FOREIGN KEY (TopicID) REFERENCES Topics(TopicID)
);

-- Таблиця для слідкуванням за змінами
CREATE TABLE ChangeLog (
    ChangeID INT PRIMARY KEY AUTO_INCREMENT,
    TableName VARCHAR(255) NOT NULL,
    RecordID INT NOT NULL,
    ActionType ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    UserID INT,
    ChangeDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE UserRoles (
    UserRoleID INT PRIMARY KEY AUTO_INCREMENT,
    RoleName VARCHAR(50) NOT NULL
);

-- Допоміжна таблиця для Юзерів та ролей
CREATE TABLE UserRolesMapping (
    UserRolesMappingID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    UserRoleID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (UserRoleID) REFERENCES UserRoles(UserRoleID)
);

-- Таблиця для рейтингу постів
CREATE TABLE PostRatings (
    RatingID INT PRIMARY KEY AUTO_INCREMENT,
    PostID INT,
    UserID INT,
    Rating INT,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE PostReplies (
    ReplyID INT PRIMARY KEY AUTO_INCREMENT,
    ParentPostID INT,
    Content TEXT,
    CreatedBy INT,
    CreationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ParentPostID) REFERENCES Posts(PostID),
    FOREIGN KEY (CreatedBy) REFERENCES Users(UserID)
);

-- Таблиця для улюблених тем користувачів
CREATE TABLE FavoriteTopics (
    FavoriteID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    TopicID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (TopicID) REFERENCES Topics(TopicID)
);

CREATE TABLE ForumSubscriptions (
    SubscriptionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ForumID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ForumID) REFERENCES Forums(ForumID)
);

CREATE TABLE PostReports (
    ReportID INT PRIMARY KEY AUTO_INCREMENT,
    PostID INT,
    UserID INT,
    ReportReason TEXT,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE FavoriteForums (
    FavoriteForumID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ForumID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ForumID) REFERENCES Forums(ForumID)
);

CREATE TABLE Tags (
    TagID INT PRIMARY KEY AUTO_INCREMENT,
    TagName VARCHAR(50) NOT NULL
);

CREATE TABLE TopicTags (
    TopicTagID INT PRIMARY KEY AUTO_INCREMENT,
    TopicID INT,
    TagID INT,
    FOREIGN KEY (TopicID) REFERENCES Topics(TopicID),
    FOREIGN KEY (TagID) REFERENCES Tags(TagID)
);

CREATE TABLE PrivateMessages (
    MessageID INT PRIMARY KEY AUTO_INCREMENT,
    SenderID INT,
    ReceiverID INT,
    MessageText TEXT,
    SendDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (SenderID) REFERENCES Users(UserID),
    FOREIGN KEY (ReceiverID) REFERENCES Users(UserID)
);
