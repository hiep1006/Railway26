DROP DATABASE Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department(
	DepartmentID 		tinyint unsigned,
    DepartmentName 		varchar(50)
);

CREATE TABLE `Position`(
	PositionID 			tinyint unsigned,
    PositionName 		varchar(50)
);

CREATE TABLE `Account`(
	AccountID 			int unsigned,
    Email 				varchar(50),
    Username 			varchar(50),
    FullName 			varchar(50),
    DepartmentID 		tinyint unsigned,
    PositionID 			tinyint unsigned,
    CreateDate 			date
);

CREATE TABLE `Group`(
	GroupID 			tinyint unsigned,
    GroupName 			varchar(50),
    CreatorID 			int unsigned,
    CreateDate 			date
);

CREATE TABLE GroupAccount(
	GroupID 			tinyint unsigned,
    AccountID 			int unsigned,
    JoinDate 			date
);

CREATE TABLE TypeQuestion(
	TypeID tinyint unsigned,
    TypeName varchar(50)
);

CREATE TABLE CategoryQuestion(
	CategoryID 			tinyint unsigned,
    CategoryName 		varchar(50)
);

CREATE TABLE Question(
	QuestionID 			tinyint unsigned,
    Content 			varchar(50),
    CategoryID 			tinyint unsigned,
    TypeID 				tinyint unsigned,
    CreatorID 			int unsigned,
    CreateDate 			date
);

CREATE TABLE Answer(
	AnswerID tinyint unsigned,
    Content varchar(50),
    QuestionID tinyint unsigned,
    isCorrect bool
);

CREATE TABLE Exam(
	ExamID 				tinyint unsigned,
    `Code` 				tinyint unsigned,
    Title 				varchar(50),
    CategoryID 			tinyint unsigned,
    Duration 			tinyint unsigned,
    CreatorID 			tinyint unsigned,
    CreateDate 			date
);

CREATE TABLE ExamQuestion(
	ExamID 				TINYINT unsigned,
    QuestionID 			tinyint unsigned
);
