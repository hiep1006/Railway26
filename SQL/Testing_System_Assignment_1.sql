DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department(
	DepartmentID 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName 		VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE `Position`(
	PositionID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName 		VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE `Account`(
	AccountID 			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email 				VARCHAR(50) NOT NULL UNIQUE,
    Username 			VARCHAR(25) UNIQUE NOT NULL,
    FullName 			VARCHAR(25) NOT NULL,
    DepartmentID 		TINYINT UNSIGNED NOT NULL,
    PositionID 			TINYINT UNSIGNED NOT NULL,
    CreateDate 			DATE,
    FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY(PositionID) REFERENCES `Position`(PositionID)
);

CREATE TABLE `Group`(
	GroupID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    GroupName 			VARCHAR(25) UNIQUE NOT NULL,
    CreatorID 			INT UNSIGNED  NOT NULL,
    CreateDate 			DATE ,
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)
);

CREATE TABLE GroupAccount(
	GroupID 			TINYINT UNSIGNED  NOT NULL,
    AccountID 			INT UNSIGNED ,
    JoinDate 			DATE,
    FOREIGN KEY (AccountID) REFERENCES `Account`(AccountID),
    FOREIGN KEY (GroupID) REFERENCES  `Group`(GroupID)
);

CREATE TABLE TypeQuestion(
	TypeID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE CategoryQuestion(
	CategoryID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CategoryName 		VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE Question(
	QuestionID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content 			VARCHAR(50),
    CategoryID 			TINYINT UNSIGNED,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    TypeQuestionID 				TINYINT UNSIGNED,
    FOREIGN KEY (TypeQuestionID) REFERENCES TypeQuestion(TypeID),
    CreatorID 			INT UNSIGNED,
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID),
    CreateDate 			DATE
);

CREATE TABLE Answer(
	AnswerID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content VARCHAR(50),
    QuestionID TINYINT UNSIGNED,
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID),
    isCorrect BOOL NOT NULL DEFAULT 0
);

CREATE TABLE Exam(
	ExamID 				TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Code` 				TINYINT UNSIGNED UNIQUE  NOT NULL,
    Title 				VARCHAR(50) UNIQUE NOT NULL,
    CategoryID 			TINYINT UNSIGNED,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    Duration 			INT  NOT NULL,
    CreatorID 			INT UNSIGNED,
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID),
    CreateDate 			DATE
);

CREATE TABLE ExamQuestion(
	ExamID 				TINYINT UNSIGNED NOT NULL,
    QuestionID 			TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (ExamID) REFERENCES Exam(ExamID),
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
