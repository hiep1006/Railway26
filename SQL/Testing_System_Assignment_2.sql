USE Testing_System_Assignment_1;
INSERT INTO Department(DepartmentName)
VALUES	("Phòng kế toán"),
		("Phòng Kiểm toán"),
		("Phòng kinh doanh"),
		("Phòng hành chính"),
		("Phòng nhân sự"),
        ("Phòng Chăm sóc Khách hàng"),
        ("Phòng tài chính"),
        ("Phòng nghiên cứu và phát triển"),
        ("Phòng quản lý chất lượng");

INSERT INTO `Position`(PositionName)
VALUES	("Chủ tịch"),
		("Hội đồng quản trị"),
		("Giám đốc điều hành"),
		("tổng giám đốc"),
		("Giám đốc"),
        ("Phó giám đốc"),
        ("Trợ lý giám đốc"),
        ("Cổ đông"),
        ("Trưởng phòng"),
        ("Phó phòng"),
		("Quản lý"),
        ("Trưởng nhóm"),
        ("Nhân viên"),
        ("Nhân viên tập sự");
       
        
        
        
INSERT INTO `Account`(Email, Username, FullName, DepartmentID, PositionID, CreateDate)
VALUES	("email1@gmail.com" , "perkercrass", "Aria Mcfarland", 1 , 1, "2021-11-7"),
		("email2@gmail.com" , "joecupid", "Maci Wyatttttt", 3 , 2, "2021-11-7"),
		("email3@gmail.com" , "timberrytrace", "Megan Carneyyyyy", 2 , 4, "2021-11-7"),
		("email4@gmail.com" , "jinkinsowner1", "Darper Barroo", 2 , 5, "2021-11-7"),
        ("email6@gmail.com" , "jinkinsowner2", "Harper Barron", 2 , 5, "2021-11-7"),
        ("email7@gmail.com" , "dinkinsowner3", "Darper Barroo", 2, 5, "2021-11-7"),
        ("email8@gmail.com" , "jinkinsowner4", "Harper Barron",2 , 5, "2021-11-7"),
        ("email9@gmail.com" , "jinkinsowner5", "Harper Barron", 2 , 5, "2021-11-7"),
        ("email10@gmail.com" , "jinkinsowner", "Harper Barron",2 , 5, "2021-11-7"),
		("email5@gmail.com" , "pipnag", "Isaiah Meyer", 3 , 1, "2021-11-7");
        
INSERT INTO `Group`(GroupName, CreatorID, CreateDate)
VALUES	("Tên nhóm 1" , "1", "2010-11-7"),
		("Tên nhóm 2" , "2", "2015-11-7"),
        ("Tên nhóm 3" , "3", "2021-11-7"),
        ("Tên nhóm 4" , "4", "2020-11-7"),
        ("Tên nhóm 5" , "4", "2019-11-7"),
        ("Tên nhóm 6" , "4", "2018-11-7"),
        ("Tên nhóm 7" , "4", "2017-11-7"),
        ("Tên nhóm 8" , "4", "2016-11-7"),
        ("Tên nhóm 9" , "4", "2015-11-7"),
        ("Tên nhóm 10" , "4", "2014-11-7"),
        ("Tên nhóm 11" , "4", "2013-11-7"),
        ("Tên nhóm 12" , "4", "2012-11-7"),
        ("Tên nhóm 13" , "4", "2011-11-7"),
        ("Tên nhóm 14" , "5", "2010-11-7");
        
INSERT INTO GroupAccount(GroupID, AccountID, JoinDate)
VALUES	("1" , "1", "2021-11-7"),
		("2" , "2", "2021-11-7"),
        ("3" , "3", "2021-11-7"),
        ("4" , "4", "2020-11-7"),
        ("4" , "4", "2019-11-7"),
        ("4" , "4", "2018-11-7"),
        ("4" , "4", "2017-11-7"),
        ("4" , "4", "2016-11-7"),
        ("4" , "4", "2015-11-7"),
        ("4" , "4", "2012-11-7"),
        ("4" , "4", "2006-11-7"),
        ("4" , "4", "2005-11-7"),
        ("5" , "5", "2001-11-7");
		
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
        
INSERT INTO Question(Content, CategoryID, TypeQuestionID, CreatorID, CreateDate)
VALUES	("Câu hỏi abc", 1, 2, 1, "2021-11-7"),
		("Content 2", 1, 3, 2, "2021-11-7"),
        ("Content 3", 1, 4, 1, "2021-11-7"),
        ("Content 4", 5, 1, 4, "2021-11-7"),
        ("Content 5", 3, 1, 3, "2021-11-7");
        
INSERT INTO Answer(Content, QuestionID, isCorrect)
VALUES	("Content 1", 1, 1),
		("Content 6", 1, 1),
        ("Content 7", 1, 1),
        ("Content 8", 1, 1),
        ("Content 9", 1, 1),
		("Content 2", 2, 0),
        ("Content 3", 3, 1),
        ("Content 4", 4, 1),
        ("Content 5", 5, 0);

INSERT INTO Exam(`Code`, Title, CategoryID, Duration, CreatorID, CreateDate)
VALUES	("1", "Tiêu đề 1", 1, "45", 2, "2021-11-7"),
		("2", "Tiêu đề 2", 3, "70", 3, "2012-11-7"),
        ("3", "Tiêu đề 3", 2, "60", 1, "2021-11-7"),
        ("4", "Tiêu đề 4", 5, "65", 5, "2015-11-7"),
        ("5", "Tiêu đề 5", 4, "45", 4, "2020-11-7");
		

INSERT INTO ExamQuestion(QuestionID)
VALUES	(5),
		(4),
        (3),
        (2),
        (1);
        

	