USE Testing_System_Assignment_1;
INSERT INTO Department(DepartmentName)
VALUES	("Phòng ban 1"),
		("Phòng ban 2"),
		("Phòng ban 3"),
		("Phòng ban 4"),
		("Phòng ban 5");

INSERT INTO `Position`(PositionName)
VALUES	("Vị trí 1"),
		("Vị trí 2"),
		("Vị trí 3"),
		("Vị trí 4"),
		("Vị trí 5");
        
INSERT INTO `Account`(Email, Username, FullName, DepartmentID, PositionID, CreateDate)
VALUES	("email1@gmail.com" , "Username1", "FullName1", 1 , 1, "2021-11-7"),
		("email2@gmail.com" , "Username2", "FullName2", 1 , 2, "2021-11-7"),
		("email3@gmail.com" , "Username3", "FullName3", 3 , 4, "2021-11-7"),
		("email4@gmail.com" , "Username4", "FullName4", 4 , 5, "2021-11-7"),
		("email5@gmail.com" , "Username5", "FullName5", 5 , 1, "2021-11-7");
        
INSERT INTO `Group`(GroupName, CreatorID, CreateDate)
VALUES	("Tên nhóm 1" , "1", "2021-11-7"),
		("Tên nhóm 2" , "2", "2021-11-7"),
        ("Tên nhóm 3" , "3", "2021-11-7"),
        ("Tên nhóm 4" , "4", "2021-11-7"),
        ("Tên nhóm 5" , "5", "2021-11-7");
        
INSERT INTO GroupAccount(GroupID, AccountID, JoinDate)
VALUES	("1" , "1", "2021-11-7"),
		("2" , "2", "2021-11-7"),
        ("3" , "3", "2021-11-7"),
        ("4" , "4", "2021-11-7"),
        ("5" , "5", "2021-11-7");
		
INSERT INTO TypeQuestion(TypeName)
VALUES	("Tên loại 1"),
		("Tên loại 2"),
        ("Tên loại 3"),
        ("Tên loại 4"),
        ("Tên loại 5");

INSERT INTO CategoryQuestion(CategoryName)
VALUES	("Tên danh mục 1"),
		("Tên danh mục 2"),
        ("Tên danh mục 3"),
        ("Tên danh mục 4"),
        ("Tên danh mục 5");
        
INSERT INTO Question(Content, CategoryID, TypeID, CreatorID, CreateDate)
VALUES	("Content 1", 1, 2, 1, "2021-11-7"),
		("Content 2", 1, 3, 2, "2021-11-7"),
        ("Content 3", 1, 4, 1, "2021-11-7"),
        ("Content 4", 5, 1, 4, "2021-11-7"),
        ("Content 5", 3, 1, 3, "2021-11-7");
        
INSERT INTO Answer(Content, QuestionID, isCorrect)
VALUES	("Content 1", 1, 1),
		("Content 2", 2, 0),
        ("Content 3", 3, 1),
        ("Content 4", 4, 1),
        ("Content 5", 5, 0);

INSERT INTO Exam(`Code`, Title, CategoryID, Duration, CreatorID, CreateDate)
VALUES	("1", "Tiêu đề 1", 1, 45, 2, "2021-11-7"),
		("2", "Tiêu đề 2", 3, 45, 3, "2021-11-7"),
        ("3", "Tiêu đề 3", 2, 45, 1, "2021-11-7"),
        ("4", "Tiêu đề 4", 5, 45, 5, "2021-11-7"),
        ("5", "Tiêu đề 5", 4, 45, 4, "2021-11-7");
		

INSERT INTO ExamQuestion(QuestionID)
VALUES	(5),
		(4),
        (3),
        (2),
        (1);
	