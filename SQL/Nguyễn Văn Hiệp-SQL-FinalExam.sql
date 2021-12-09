-- Ta có 1 database để quản lý điểm của học sinh như dưới (trường có dấu gạch chân là
-- PrimaryKey)
-- Student(ID,Name,Age,Gender)
-- Subject(ID, Name)
-- StudentSubject(StudentID,SubjectID,Mark,Date)

-- Questions
-- 1. Tạo table với các ràng buộc và kiểu dữ liệu
-- Thêm ít nhất 3 bản ghi vào table
DROP DATABASE IF EXISTS Final_Exam_1;
CREATE DATABASE Final_Exam_1;
USE Final_Exam_1;
CREATE TABLE Student(
		ID INT PRIMARY KEY,
        `Name` VARCHAR(50) NOT NULL,
        Age TINYINT(3) NOT NULL,
        Gender ENUM("male", "female") NOT NULL
);
CREATE TABLE `Subject`(
		ID TINYINT PRIMARY KEY,
        `Name` VARCHAR(20) NOT NULL
);
CREATE TABLE StudentSubject(
		StudentID INT NOT NULL,
        SubjectID TINYINT NOT NULL,
        Mark FLOAT,
        `Date` Date NOT NULL,
        FOREIGN KEY (StudentID) REFERENCES Student(ID),
        FOREIGN KEY (SubjectID) REFERENCES `Subject`(ID)
);
INSERT INTO Student VALUES		(1 , "Nguyễn Minh Thiện" , 20, "male"),
								(2 , "Phan Trung Nhân" , 25, "male"),
                                (3 , "Lý Minh Ánh" , 19, "female");
INSERT INTO `Subject` VALUES	(1 , "Ngữ văn"),
								(2 , "Toán"),
                                (3 , "Giáo dục công dân");
INSERT INTO StudentSubject VALUES	(1, 1, 6 , "2020-1-1"),
									(1, 2, NULL , "2021-2-1"),
                                    (1, 3, 10 , "2021-9-12"),
                                    (2, 1, 5 , "2021-2-1"),
                                    (2, 2, NULL , "2021-2-1"),
                                    (2, 3, 8 , "2021-2-1");
-- 2. Viết lệnh để
-- a) Lấy tất cả các môn học không có bất kì điểm nào
-- b) Lấy danh sách các môn học có ít nhất 2 điểm								
SELECT `Name` 
FROM `Subject`
WHERE ID = (SELECT SubjectID 
			FROM StudentSubject 
            GROUP BY SubjectID
            HAVING count(Mark) = 0);
            
SELECT `Name` 
FROM `Subject`, StudentSubject
WHERE `Subject`.ID = StudentSubject.SubjectID
GROUP BY SubjectID
HAVING count(Mark) >= 2;

-- 3. Tạo view có tên là "StudentInfo" lấy các thông tin về học sinh bao gồm:
-- Student ID,Subject ID, Student Name, Student Age, Student Gender,
-- Subject Name, Mark, Date
-- (Với cột Gender show 'Male' để thay thế cho 0, 'Female' thay thế cho 1 và
-- 'Unknow' thay thế cho null)

CREATE VIEW StudentInfo AS
SELECT StudentID, SubjectID, Mark, `Date`, `Subject`.`Name` AS subjectName, Student.`Name` AS studentName , Student.Age, Student.Gender
FROM StudentSubject, `Subject`, Student
WHERE StudentSubject.StudentID = Student.ID 
AND StudentSubject.SubjectID = `Subject`.ID;
SELECT * FROM StudentInfo;

-- 5. Viết 1 store procedure (có 2 parameters: student name) sẽ xóa tất cả các
-- thông tin liên quan tới học sinh có cùng tên như parameter
-- Trong trường hợp nhập vào student name = "*" thì procedure sẽ xóa tất cả
-- các học sinh

SET SQL_SAFE_UPDATES = 0;
DELIMITER $$
CREATE PROCEDURE Del(IN StudentName VARCHAR(50))
BEGIN
	DELETE FROM StudentSubject
    WHERE StudentID = (SELECT ID 
						 FROM Student
						WHERE `Name` = StudentName);
END$$
DELIMITER ;

CALL Del("Nguyễn Minh Thiện");

