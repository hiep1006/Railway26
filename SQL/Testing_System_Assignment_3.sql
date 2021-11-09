USE Testing_System_Assignment_1;
SELECT * FROM department; -- 2
SELECT DepartmentID FROM department WHERE DepartmentName = "Phòng kinh doanh"; -- 3
SELECT * FROM `Account` WHERE length(FullName) = (SELECT MAX(length(FullName)) FROM `Account`); -- 4
SELECT * FROM `Account` WHERE DepartmentID = 3 ORDER BY length(FullName) DESC LIMIT 1; -- 5
SELECT GroupName FROM `Group` WHERE CreateDate < "2019-12-20"; -- 6
SELECT count(AnswerID)  , QuestionID FROM Answer GROUP BY QuestionID HAVING count(AnswerID) >= 4; -- 7
SELECT `Code` FROM Exam WHERE Duration >= 60 AND CreateDate < "2019-12-20"; -- 8
SELECT * FROM `Group` ORDER BY CreateDate DESC LIMIT 5; -- 9
SELECT count(1) FROM `Account` WHERE DepartmentID = 2 ; -- 10
SELECT * FROM `Account` WHERE FullName LIKE ("D%o"); -- 11
SET SQL_SAFE_UPDATES = 0; DELETE FROM Exam WHERE CreateDate < "2019-12-20"; -- 12
SET SQL_SAFE_UPDATES = 0; DELETE FROM Question WHERE Content LIKE ("Câu hỏi%"); -- 13
UPDATE `Account` SET FullName = "Nguyễn Bá Lộc" , Email = "loc.nguyenba@vti.com.vn" WHERE AccountID = 5; -- 14
UPDATE GroupAccount SET GroupID = 4 WHERE AccountID = 5; -- 15