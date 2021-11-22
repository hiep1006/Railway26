-- 1 
DROP PROCEDURE IF EXISTS GetNameDept;
DELIMITER $$
CREATE PROCEDURE GetNameDept(IN nameDept VARCHAR(25))
BEGIN
	SELECT `Account`.*
    FROM `Account`, Department
    WHERE Department.DepartmentID = `Account`.DepartmentID AND DepartmentName = nameDept;
END$$
DELIMITER ;
CALL GetNameDept("Phòng kinh doanh");

-- 2
DROP PROCEDURE IF EXISTS quantity_account_in_group;
DELIMITER $$
CREATE PROCEDURE quantity_account_in_group()
BEGIN
	SELECT  count(DISTINCT GroupAccount.AccountID)
    
    FROM GroupAccount , `Group`
    WHERE GroupAccount.GroupID = `Group`.GroupID
    GROUP BY GroupAccount.GroupID;
END$$
DELIMITER ;
CALL quantity_account_in_group();

-- 3 Tạo store để thống kê mỗi type question có bao nhiêu question được tạo trong tháng hiện tại
DROP PROCEDURE IF EXISTS quantity_questionCreate;
DELIMITER $$
CREATE PROCEDURE quantity_questionCreate()
BEGIN
	SELECT TypeQuestion.TypeName, count(Question.QuestionID)
    FROM Question , TypeQuestion
	WHERE Question.TypeQuestionID = TypeQuestion.TypeID 
    GROUP BY TypeQuestion.TypeName, Question.CreateDate HAVING Month(Question.CreateDate) = Month(now());
    
END$$
DELIMITER ;

CALL quantity_questionCreate();

-- 4 Tạo store để trả ra id của type question có nhiều câu hỏi nhất
DROP PROCEDURE IF EXISTS TypeQuestionMax;
DELIMITER $$
CREATE PROCEDURE TypeQuestionMax(OUT type_id INT)
BEGIN
	SELECT TypeQuestionID INTO type_id
    FROM Question
    GROUP BY TypeQuestionID HAVING count(QuestionID) = (SELECT max(_max) FROM (SELECT count(QuestionID) AS _max
    FROM Question
    GROUP BY TypeQuestionID) AS abc);
END$$
DELIMITER ;

SET @type_question_id = '';
CALL TypeQuestionMax(@type_question_id);
SELECT @type_question_id;

-- 5 Sử dụng store ở question 4 để tìm ra tên của type question

SELECT TypeQuestion.TypeName
FROM Question, TypeQuestion
WHERE Question.TypeQuestionID = TypeQuestion.TypeID AND Question.TypeQuestionID = (SELECT @type_question_id);

-- 6 Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa chuỗi của người dùng nhập vào

DROP PROCEDURE IF EXISTS search;
DELIMITER $$
CREATE PROCEDURE search(IN _Input VARCHAR(25))
BEGIN
	SELECT *
    FROM `Group`
    WHERE GroupName LIKE concat(_Input , "%") OR GroupName LIKE concat( "%", _Input) OR GroupName LIKE concat("%",_Input , "%");
END$$
DELIMITER ;
CALL search("2");

-- 7 Viết 1 store cho phép người dùng nhập vào thông tin fullName, email và
-- trong store sẽ tự động gán:

 -- username sẽ giống email nhưng bỏ phần @..mail đi
 -- positionID: sẽ có default là developer
 -- departmentID: sẽ được cho vào 1 phòng chờ

-- Sau đó in ra kết quả tạo thành công
SET SQL_SAFE_UPDATES = 0;
DROP PROCEDURE IF EXISTS NhapNameEmail;
DELIMITER $$
CREATE PROCEDURE NhapNameEmail(IN inFullName VARCHAR(25) , IN inEmail VARCHAR(50))
BEGIN
	 
	`Account` SET username = SUBSTRING_INDEX(inEmail, "@", 1) WHERE FullName = inFullName AND Email = inEmail;
    -- ALTER TABLE `Account` MODIFY positionID TINYINT UNSIGNED NOT NULL DEFAULT 14;
    UPDATE `Account` SET positionID = DEFAULT(positionID) WHERE FullName = inFullName AND Email = inEmail ;
    UPDATE `Account` SET departmentID = 10 WHERE FullName = inFullName AND Email = inEmail;

END$$
DELIMITER ;

CALL NhapNameEmail("Darper Barron" , "email8@gmail.com");
SELECT * FROM `Account`;


-- 8 Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
 -- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất
 DROP PROCEDURE IF EXISTS ThongKeCauHoi;
 DELIMITER $$
 CREATE PROCEDURE ThongKeCauHoi()
 BEGIN
	
 END$$
 DELIMITER ;
 SET SQL_SAFE_UPDATES = 0; 
 -- 9 Viết 1 store cho phép người dùng xóa exam dựa vào ID
 DROP PROCEDURE IF EXISTS Del_Exam;
 DELIMITER $$
 CREATE PROCEDURE Del_Exam(IN ID INT)
 BEGIN
	
    DELETE FROM Exam WHERE ExamID = ID;
 END$$
 DELIMITER ;
 CALL Del_Exam(5);
 SELECT * FROM Exam;
 
 -- 10 Tìm ra các exam được tạo từ 3 năm trước và xóa các exam đó đi (sử
-- dụng store ở câu 9 để xóa)
-- Sau đó in số lượng record đã remove từ các table liên quan trong khi
-- removing
DELIMITER $$

DROP PROCEDURE IF EXISTS loopWhile$$
 
CREATE PROCEDURE loopWhile(OUT ID INT)
BEGIN
	
		
		SELECT ExamID INTO ID
		FROM Exam
		WHERE year(CreateDate)  <= year(now())-3
        LIMIT 1;
		

END$$
DELIMITER ;



DELIMITER $$

DROP PROCEDURE IF EXISTS loopWhile1$$

CREATE PROCEDURE loopWhile1()
BEGIN
		DECLARE quantity INT;
        SET quantity = 0;
		SET @ID = '';
		CALL loopWhile(@ID);
		-- SELECT @ID;
		WHILE (@ID IS NOT NULL) DO
			SET quantity = quantity + 1;
			CALL loopWhile(@ID);
			
            CALL Del_Exam(@ID);
			
            
        END WHILE;
        SET quantity = quantity - 1;
		SELECT quantity;
		
END$$
DELIMITER ;

CALL loopWhile1();

SELECT * FROM Exam;
-- 11 Viết store cho phép người dùng xóa phòng ban bằng cách người dùng
-- nhập vào tên phòng ban và các account thuộc phòng ban đó sẽ được
-- chuyển về phòng ban default là phòng ban chờ việc
DROP PROCEDURE IF EXISTS DelDepartment;
DELIMITER $$
CREATE PROCEDURE DelDepartment(IN inDepartmentName VARCHAR(25))
BEGIN
	 SET SQL_SAFE_UPDATES = 0; 
	 
	 DELETE FROM `department` WHERE DepartmentName = inDepartmentName;
     
END$$
DELIMITER ;
CALL DelDepartment("Phòng kinh doanh");
SELECT *
FROM `Account`;

-- 12 Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong năm nay
DROP PROCEDURE IF EXISTS QuantityContent;
DELIMITER $$
CREATE PROCEDURE QuantityContent()
BEGIN
	 SELECT month(CreateDate) , count(QuestionID)
     FROM Question
     WHERE year(CreateDate) = year(now())
     GROUP BY month(CreateDate);
     
END$$
DELIMITER ;
CALL QuantityContent();

-- 13 Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong 6
-- tháng gần đây nhất
-- (Nếu tháng nào không có thì sẽ in ra là "không có câu hỏi nào trong
-- tháng")

DROP PROCEDURE IF EXISTS QuantityContent1;
DELIMITER $$
CREATE PROCEDURE QuantityContent1()
BEGIN
	 SELECT month(CreateDate) , count(QuestionID)
     FROM Question
     WHERE year(CreateDate) = year(now())
     GROUP BY month(CreateDate)
     ORDER BY month(CreateDate) DESC LIMIT 6;
     
END$$
DELIMITER ;
CALL QuantityContent1();