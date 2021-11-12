USE Testing_System_Assignment_1;
-- 1
SELECT `Account`.FullName , Department.DepartmentName , `Position`.PositionName
FROM `Account`, Department, `Position`
WHERE `Account`.DepartmentID = Department.DepartmentID AND `Account`.PositionID = `Position`.PositionID AND `Position`.PositionName = "Nhân viên"; 

-- 2
SELECT *  
FROM `Account`
WHERE CreateDate > "2010-12-20";

-- 3
SELECT `Account`.FullName , `Position`.PositionName
FROM `Account`
JOIN `Position` ON `Account`.PositionID = `Position`.PositionID
WHERE PositionName = "developer";

 -- 4
SELECT Department.DepartmentName , count(AccountID)
FROM `Account`, Department, `Position`
WHERE `Account`.DepartmentID = Department.DepartmentID AND `Position`.PositionID = `Account`.PositionID AND `Position`.PositionName = "Nhân viên"
GROUP BY DepartmentName HAVING count(AccountID) > 3;

-- 5
SELECT Question.Content , count(ExamID) AS Exam_ID
FROM ExamQuestion
JOIN Question ON ExamQuestion.QuestionID = Question.QuestionID
GROUP BY ExamQuestion.QuestionID HAVING count(ExamID) = (SELECT max(Exam_ID) FROM (SELECT count(ExamID) AS Exam_ID FROM ExamQuestion GROUP BY QuestionID) AS abc);

 -- (SELECT count(ExamID) AS Exam_ID FROM ExamQuestion GROUP BY QuestionID) AS abc; bảng dẫn xuất đọc mãi mới hiểu đau hết cả đầu


-- 6
SELECT CategoryQuestion.CategoryName, count(CategoryQuestion.CategoryName)
FROM Question
JOIN CategoryQuestion ON Question.CategoryID = CategoryQuestion.CategoryID
GROUP BY CategoryQuestion.CategoryName;

-- 7
SELECT Question.Content , count(Question.Content)
FROM ExamQuestion
JOIN Question ON ExamQuestion.QuestionID = Question.QuestionID
GROUP BY Question.Content ;

-- 8
SELECT Question.Content , count(Answer.AnswerID)
FROM Answer
JOIN Question ON Answer.QuestionID = Question.QuestionID
GROUP BY Question.Content HAVING count(Answer.AnswerID) = max(Answer.AnswerID) ;

-- 9
SELECT `Group`.GroupName , count(DISTINCT GroupAccount.AccountID)
FROM GroupAccount
JOIN `Group` ON GroupAccount.GroupID = `Group`.GroupID
GROUP BY `Group`.GroupName;

-- 10
SELECT `Position`.PositionName , count(`Account`.AccountID)
FROM `Account`
JOIN `Position` ON `Account`.PositionID = `Position`.PositionID
GROUP BY PositionName
ORDER BY count(`Account`.AccountID) LIMIT 1;

-- 11
SELECT Department.DepartmentName , `Position`.PositionName, count(`Account`.AccountID)
FROM `Account` , Department, `Position`
WHERE `Account`.DepartmentID = Department.DepartmentID AND `Account`.PositionID = `Position`.PositionID
GROUP BY DepartmentName, PositionName;

-- 12
SELECT Question.Content , CategoryQuestion.CategoryName, TypeQuestion.TypeName, `Account`.FullName , Answer.Content
FROM Question , CategoryQuestion , TypeQuestion, `Account`, Answer
WHERE Question.CategoryID = CategoryQuestion.CategoryID AND Question.TypeQuestionID = TypeQuestion.TypeID AND Question.CreatorID = `Account`.AccountID AND Answer.QuestionID = Question.QuestionID;

-- 13
SELECT TypeQuestion.TypeName , count(Question.QuestionID)
FROM Question
JOIN TypeQuestion ON Question.TypeQuestionID = TypeQuestion.TypeID
GROUP BY TypeQuestion.TypeName;

-- 14
SELECT `Group`.GroupName , GroupAccount.AccountID
FROM GroupAccount
JOIN `Group` ON GroupAccount.GroupID = `Group`.GroupID AND GroupAccount.AccountID IS NULL;

-- 16 
SELECT Question.Content , Answer.Content
FROM Answer
JOIN Question ON Answer.QuestionID = Question.QuestionID AND Answer.Content IS NULL ;

-- Exercise 2
-- 17
SELECT *
FROM GroupAccount
JOIN `Account` ON GroupAccount.AccountID = `Account`.AccountID AND GroupID = 1

UNION
SELECT *
FROM GroupAccount
JOIN `Account` ON GroupAccount.AccountID = `Account`.AccountID AND GroupID = 2;


-- 18
SELECT `Group`.GroupName
FROM GroupAccount
JOIN `Group` ON GroupAccount.GroupID = `Group`.GroupID AND AccountID > 5
UNION ALL 
SELECT `Group`.GroupName
FROM GroupAccount
JOIN `Group` ON GroupAccount.GroupID = `Group`.GroupID AND AccountID < 7;

