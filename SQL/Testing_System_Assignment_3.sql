USE Testing_System_Assignment_1;
 -- 2
SELECT * 
FROM department;

 -- 3
SELECT DepartmentID 
FROM department 
WHERE DepartmentName = "Phòng kinh doanh";

 -- 4
SELECT * 
FROM `Account` 
WHERE length(FullName) = (SELECT MAX(length(FullName)) FROM `Account`);

-- 5
SELECT * , length(FullName)
FROM `Account`
WHERE length(FullName) = (SELECT max(length(FullName)) FROM `Account` WHERE departmentID = 3) AND departmentID = 3;



 
 -- 6
SELECT GroupName 
FROM `Group` 
WHERE CreateDate < "2019-12-20";

  -- 7
SELECT count(AnswerID)  , QuestionID 
FROM Answer 
GROUP BY QuestionID 
HAVING count(AnswerID) >= 4;

-- 8
SELECT `Code` 
FROM Exam 
WHERE Duration >= 60 AND CreateDate < "2019-12-20"; 

-- 9
SELECT * 
FROM `Group` 
ORDER BY CreateDate DESC LIMIT 5; 

-- 10
SELECT count(1) 
FROM `Account` 
WHERE DepartmentID = 2 AND PositionID = 13; 

-- 11
SELECT * 
FROM `Account` 
WHERE FullName LIKE ("D%o") AND PositionID = 13; 

-- 12
SET SQL_SAFE_UPDATES = 0; 
DELETE FROM Exam 
WHERE CreateDate < "2019-12-20"; 

-- 13
SET SQL_SAFE_UPDATES = 0; 
DELETE FROM Question
WHERE Content LIKE ("Câu hỏi%"); 

-- 14
UPDATE `Account` SET FullName = "Nguyễn Bá Lộc" , Email = "loc.nguyenba@vti.com.vn" 
WHERE AccountID = 5; 

-- 15
UPDATE GroupAccount SET GroupID = 4 
WHERE AccountID = 5; 