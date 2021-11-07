USE Testing_System_Assignment_1;
SELECT * FROM department;
SELECT DepartmentID FROM department WHERE DepartmentName = "Phòng kinh doanh";
SELECT * FROM `Account` WHERE length(FullName) = (SELECT MAX(length(FullName)) FROM `Account`);
SELECT * FROM `Account` WHERE DepartmentID = 3 ORDER BY FullName DESC LIMIT 1;
SELECT GroupName FROM `Group` WHERE CreateDate < '2019-12-20';
