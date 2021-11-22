USE fresher_management;
-- 1
CREATE TABLE Department(
	Department_Number TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Department_Name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE Employee_Table(
	Employee_Number TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Department_Number TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (Department_Number) REFERENCES Department(Department_Number)
);

CREATE TABLE Employee_Skill_Table(
	Employee_Number TINYINT UNSIGNED,
    Skill_Code VARCHAR(10) NOT NULL,
    Date_Registered DATETIME DEFAULT NOW(),
    FOREIGN KEY (Employee_Number) REFERENCES Employee_Table(Employee_Number)
);
-- 2
INSERT INTO Department(Department_Name) 
VALUES			("Phòng 1"),
				("Phòng 2"),
                ("Phòng 3"),
                ("Phòng 4"),
                ("Phòng 5"),
                ("Phòng 6"),
                ("Phòng 7"),
                ("Phòng 8"),
                ("Phòng 9"),
                ("Phòng 10");
INSERT INTO Employee_Table(Employee_Name , Department_Number)
VALUES			("Nhân viên 1" , 1),
				("Nhân viên 2" , 2),
                ("Nhân viên 3", 3),
				("Nhân viên 4", 4),
                ("Nhân viên 5", 5),
                ("Nhân viên 6", 1),
                ("Nhân viên 7",1),
                ("Nhân viên 8", 1),
                ("Nhân viên 9", 9),
                ("Nhân viên 10", 10);
INSERT INTO Employee_Skill_Table(Employee_Number, Skill_Code, Date_Registered)
VALUES			(1 , "JAVA" , DEFAULT),
				(2 , "C++" , DEFAULT),
                (3 , "C#" , DEFAULT),
                (4 , "PYTHON" , DEFAULT),
                (5 , "JAVASCRIPS" , DEFAULT),
                (6 , "PHP" , DEFAULT),
                (7 , "Ruby" , DEFAULT),
                (8 , "LUA" , DEFAULT),
                (1 , "JAVA" , DEFAULT),
                (1 , "JAVA" , DEFAULT);
-- 3
SELECT Employee_Table.Employee_Name , Employee_Skill_Table.Skill_Code
FROM Employee_Table, Employee_Skill_Table
WHERE Employee_Table.Employee_Number = Employee_Skill_Table.Employee_Number AND Skill_Code = "JAVA";
-- 4
SELECT Department.Department_Name
FROM Employee_Table, Department
WHERE Employee_Table.Department_Number = Department.Department_Number 
GROUP BY Department.Department_Number HAVING count(Employee_Number) > 3;

-- 5
SELECT Department.Department_Name, Employee_Table.Employee_Name
FROM Department, Employee_Table
WHERE Department.Department_Number = Employee_Table.Department_Number;

-- 6
SELECT Employee_Table.Employee_Name , count(Employee_Skill_Table.Skill_Code)
FROM Employee_Skill_Table, Employee_Table
WHERE Employee_Skill_Table.Employee_Number = Employee_Table.Employee_Number
GROUP BY Employee_Table.Employee_Name HAVING count(Employee_Skill_Table.Skill_Code) > 1;


