DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department(
	DepartmentID 		TINYINT UNSIGNED,
    DepartmentName 		VARCHAR(50)
);

CREATE TABLE `Position`(
	PositionID 			TINYINT UNSIGNED,
    PositionName 		VARCHAR(50)
);

CREATE TABLE `Account`(
	AccountID 			INT UNSIGNED,
    Email 				VARCHAR(50),
    Username 			VARCHAR(50),
    FullName 			VARCHAR(50),
    DepartmentID 		TINYINT UNSIGNED,
    PositionID 			TINYINT UNSIGNED,
    CreateDate 			DATE
);

CREATE TABLE `Group`(
	GroupID 			TINYINT UNSIGNED,
    GroupName 			VARCHAR(50),
    CreatorID 			INT UNSIGNED,
    CreateDate 			DATE
);

CREATE TABLE GroupAccount(
	GroupID 			TINYINT UNSIGNED,
    AccountID 			INT UNSIGNED,
    JoinDate 			DATE
);

CREATE TABLE TypeQuestion(
	TypeID TINYINT UNSIGNED,
    TypeName VARCHAR(50)
);

CREATE TABLE CategoryQuestion(
	CategoryID 			TINYINT UNSIGNED,
    CategoryName 		VARCHAR(50)
);

CREATE TABLE Question(
	QuestionID 			TINYINT UNSIGNED,
    Content 			VARCHAR(50),
    CategoryID 			TINYINT UNSIGNED,
    TypeID 				TINYINT UNSIGNED,
    CreatorID 			INT UNSIGNED,
    CreateDate 			DATE
);

CREATE TABLE Answer(
	AnswerID TINYINT UNSIGNED,
    Content VARCHAR(50),
    QuestionID TINYINT UNSIGNED,
    isCorrect BOOL
);

CREATE TABLE Exam(
	ExamID 				TINYINT UNSIGNED,
    `Code` 				TINYINT UNSIGNED,
    Title 				VARCHAR(50),
    CategoryID 			TINYINT UNSIGNED,
    Duration 			TINYINT UNSIGNED,
    CreatorID 			TINYINT UNSIGNED,
    CreateDate 			DATE
);

CREATE TABLE ExamQuestion(
	ExamID 				TINYINT UNSIGNED,
    QuestionID 			TINYINT UNSIGNED
);
