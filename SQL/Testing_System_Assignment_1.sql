DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department(
	DepartmentID 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName 		VARCHAR(25)
);

CREATE TABLE `Position`(
	PositionID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName 		VARCHAR(25)
);

CREATE TABLE `Account`(
	AccountID 			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email 				VARCHAR(25),
    Username 			VARCHAR(25),
    FullName 			VARCHAR(25),
    DepartmentID 		TINYINT UNSIGNED,
    PositionID 			TINYINT UNSIGNED,
    CreateDate 			DATE,
    FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY(PositionID) REFERENCES `Position`(PositionID)
);

CREATE TABLE `Group`(
	GroupID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    GroupName 			VARCHAR(25),
    CreatorID 			INT UNSIGNED,
    CreateDate 			DATE,
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)
);

CREATE TABLE GroupAccount(
	GroupID 			TINYINT UNSIGNED,
    AccountID 			INT UNSIGNED,
    JoinDate 			DATE,
    FOREIGN KEY (AccountID) REFERENCES `Account`(AccountID)
);

CREATE TABLE TypeQuestion(
	TypeID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(25)
);

CREATE TABLE CategoryQuestion(
	CategoryID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CategoryName 		VARCHAR(25)
);

CREATE TABLE Question(
	QuestionID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content 			VARCHAR(50),
    CategoryID 			TINYINT UNSIGNED,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    TypeID 				TINYINT UNSIGNED,
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
    CreatorID 			INT UNSIGNED,
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID),
    CreateDate 			DATE
);

CREATE TABLE Answer(
	AnswerID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content VARCHAR(50),
    QuestionID TINYINT UNSIGNED,
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID),
    isCorrect BOOL
);

CREATE TABLE Exam(
	ExamID 				TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Code` 				TINYINT UNSIGNED,
    Title 				VARCHAR(25),
    CategoryID 			TINYINT UNSIGNED,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    Duration 			TINYINT UNSIGNED,
    CreatorID 			INT UNSIGNED,
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID),
    CreateDate 			DATE
);

CREATE TABLE ExamQuestion(
	ExamID 				TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    QuestionID 			TINYINT UNSIGNED,
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
