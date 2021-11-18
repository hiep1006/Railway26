-- 1

CREATE VIEW NhanVien_Sale AS
SELECT `Account`.*, `Position`.PositionName , Department.DepartmentName
FROM `Account` , `Position` , Department
WHERE `Account`.PositionID = `Position`.PositionID AND `Account`.DepartmentID = Department.DepartmentID AND departmentName = "Phòng kinh doanh" AND positionName = "Nhân viên";


-- 2
CREATE VIEW Max_Gr AS
SELECT FullName , count(GroupAccount.GroupID)
FROM `Account`
JOIN GroupAccount ON `Account`.AccountID = GroupAccount.AccountID
GROUP BY GroupAccount.AccountID HAVING count(GroupAccount.GroupID) = (
	SELECT max(MAX_GR) FROM (SELECT count(DISTINCT GroupAccount.GroupID) AS MAX_GR FROM GroupAccount GROUP BY GroupAccount.AccountID) AS abc
);



-- 3
CREATE VIEW view_1 AS
SELECT Content , length(Content)
FROM Question
WHERE length(Content) > 300;



-- 4
CREATE VIEW view_2 AS
SELECT Department.DepartmentName , count(AccountID)
FROM `Account`
JOIN `Position` ON `Account`.PositionID = `Position`.PositionID  AND `Position`.PositionName = "Nhân viên"
JOIN Department ON `Account`.DepartmentID = Department.DepartmentID
GROUP BY `Account`.DepartmentID HAVING  count(AccountID) = (SELECT max(_max) FROM (SELECT count(AccountID) AS _max FROM `Account` WHERE `Account`.PositionID = 13 GROUP BY `Account`.DepartmentID) AS abc);

-- 5
CREATE VIEW view_3 AS
SELECT Question.Content , `Account`.FullName
FROM `Account`
JOIN Question ON `Account`.AccountID = QuestionID AND `Account`.FullName LIKE ("Nguyễn%")
;
