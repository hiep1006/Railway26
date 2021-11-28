DROP DATABASE IF EXISTS Exam2;
CREATE DATABASE Exam2;
USE Exam2;
CREATE TABLE Users(
		Id INT(10) PRIMARY KEY,
        FirtsName VARCHAR(30) NOT NULL,
        LastName VARCHAR(30)NOT NULL,
        Email VARCHAR(100) UNIQUE,
        Phone VARCHAR(20) UNIQUE,
        EmployeeId VARCHAR(10) NOT NULL,
        Avatar TEXT,
        DepartmentId INT(10) NOT NULL,
        Gender TINYINT(10) NOT NULL,
        Age INT(3) NOT NULL,
        CreateAt DATETIME DEFAULT NOW(),
        UpdatedAt DATETIME NOT NULL
);
CREATE TABLE department(
		id INT(10) PRIMARY KEY,
        `name` VARCHAR(30) NOT NULL,
        `description` TEXT ,
        create_at DATETIME DEFAULT NOW(),
        updated_at DATETIME
);
CREATE TABLE UserDepartment(
		Id INT(10) PRIMARY KEY,
        User_Rid INT(10) NOT NULL,
        FOREIGN KEY (User_Rid) REFERENCES Users(Id),
		Department_Id INT(10) NOT NULL,
        FOREIGN KEY (Department_Id) REFERENCES department(id),
        Start_Date DATE NOT NULL,
        End_Date DATE NOT NULL,
        Create_At DATETIME DEFAULT NOW(),
        Updated_At DATETIME
);
CREATE TABLE roles(
		id INT(10) PRIMARY KEY,
        `name` VARCHAR(30) ,
        create_at DATETIME DEFAULT NOW(),
        updated_at DATETIME
);
CREATE TABLE user_role(
		id INT(10) PRIMARY KEY,
        user_department_id INT(10) NOT NULL,
        FOREIGN KEY (user_department_id) REFERENCES UserDepartment(id),
        role_id INT(10) NOT NULL,
        FOREIGN KEY (role_id) REFERENCES roles(id) ,
        start_date DATE,
        end_date DATE,
        create_at DATETIME DEFAULT NOW(),
        updated_at DATETIME
);
CREATE TABLE salary(
		id INT(10) PRIMARY KEY,
        users_role_id INT(10),
        FOREIGN KEY (users_role_id) REFERENCES user_role(id),
        total_salary DOUBLE(12 , 2) NOT NULL,
        `month` VARCHAR(2),
        `year` VARCHAR(4),
        create_at DATETIME DEFAULT NOW(),
		updated_at DATETIME
);
CREATE TABLE salary_detail_type(
		id INT(10) PRIMARY KEY,
        `name` VARCHAR(25),
        create_at DATETIME DEFAULT NOW(),
        updated_at DATETIME
);
CREATE TABLE salary_detail(
		id INT(10) PRIMARY KEY,
        amount DOUBLE(12, 2) NOT NULL,
        salary_id INT(10),
        FOREIGN KEY (salary_id) REFERENCES salary(id),
        salary_detail_type_id INT(10) NOT NULL,
        FOREIGN KEY (salary_detail_type_id) REFERENCES salary_detail_type(id),
        operation TINYINT(3) NOT NULL
);

insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (1, 'Leopold', 'Dawidsohn', 'ldawidsohn0@marriott.com', '163-884-5579', '8078892975', '1.00', 1, 1, 5, '2021-02-10', '2021-04-17');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (2, 'Sella', 'Gibby', 'sgibby1@spiegel.de', '657-425-6621', '9579804871', '-$1.00', 2, 2, 53, '2021-01-02', '2021-07-02');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (3, 'Lennie', 'Ong', 'long2@nytimes.com', '597-943-4986', '7884907291', '和製漢語', 3, 1, 27, '2021-01-28', '2021-04-05');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (4, 'Gabey', 'Shoveller', 'gshoveller3@chron.com', '935-363-2970', '6398242341', '../../../../../../../../../../../etc/hosts', 4, 1, 60, '2021-07-17', '2021-01-05');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (5, 'Pedro', 'McCaughey', 'pmccaughey4@examiner.com', '664-127-4534', '4776507646', '(｡◕ ∀ ◕｡)', 5, 0, 99, '2021-04-19', '2021-04-14');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (6, 'Des', 'Farens', 'dfarens5@unicef.org', '874-106-9737', '7855167250', '␡', 6, 2, 10, '2020-11-30', '2021-09-04');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (7, 'Hayes', 'Yanin', 'hyanin6@bravesites.com', '648-711-1562', '4560166076', '0️⃣ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟', 7, 0, 57, '2021-01-20', '2021-02-05');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (8, 'Saraann', 'Neicho', 'sneicho7@fc2.com', '747-597-4111', '7793777113', null, 8, 1, 79, '2021-02-09', '2021-04-14');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (9, 'Ddene', 'Minty', 'dminty8@angelfire.com', '762-600-1483', '8370000072', '␡', 9, 0, 45, '2021-03-23', '2021-04-23');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (10, 'Dunn', 'Fullick', 'dfullick9@addtoany.com', '466-613-8514', '0484735854', '00˙Ɩ$-', 10, 2, 54, '2021-01-19', '2021-09-21');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (11, 'Perl', 'Benian', 'pbeniana@webeden.co.uk', '397-762-0232', '8609431767', '1', 11, 0, 58, '2021-05-09', '2021-10-18');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (12, 'Niki', 'Jodlkowski', 'njodlkowskib@myspace.com', '789-451-2832', '6676489775', '"''"''"''''''''"', 12, 1, 70, '2021-08-06', '2021-11-23');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (13, 'Elmira', 'Neilands', 'eneilandsc@reference.com', '263-983-0316', '0672956075', 'œ∑´®†¥¨ˆøπ“‘', 13, 2, 13, '2021-03-20', '2021-06-30');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (14, 'Shani', 'Gue', 'sgued@hatena.ne.jp', '213-430-7641', '2281744133', '̦H̬̤̗̤͝e͜ ̜̥̝̻͍̟́w̕h̖̯͓o̝͙̖͎̱̮ ҉̺̙̞̟͈W̷̼̭a̺̪͍į͈͕̭͙̯̜t̶̼̮s̘͙͖̕ ̠̫̠B̻͍͙͉̳ͅe̵h̵̬͇̫͙i̹͓̳̳̮͎̫̕n͟d̴̪̜̖ ̰͉̩͇͙̲͞ͅT͖̼͓̪͢h͏͓̮̻e̬̝̟ͅ ̤̹̝W͙̞̝͔͇͝ͅa͏͓͔̹̼̣l̴͔̰̤̟͔ḽ̫.͕', 14, 1, 46, '2021-11-12', '2021-03-25');
insert into Users (Id, FirtsName, LastName, Email, Phone, EmployeeId, Avatar, DepartmentId, Gender, Age, CreateAt, UpdatedAt) values (15, 'Forbes', 'William', 'fwilliame@webnode.com', '851-623-5627', '7546476865', '-1E+02', 15, 2, 74, '2021-02-06', '2021-09-17');

insert into department (id, `name`, `description`, create_at, updated_at) values (1, 'Admin', 'Exc les soft tissue NEC', '2021-10-09', '2020-12-26');
insert into department (id, `name`, `description`, create_at, updated_at) values (2, 'HR', 'Cystostomy closure', '2020-12-16', '2021-08-28');
insert into department (id, `name`, `description`, create_at, updated_at) values (3, 'IT', 'Part sm bowel resect NEC', '2021-04-18', '2021-11-08');
insert into department (id, `name`, `description`, create_at, updated_at) values (4, 'Delivery', 'Suture gastric lacerat', '2021-11-11', '2021-10-07');


insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (1, 12, 4, '2020-12-21', '2020-12-02', '2021-05-06', '2021-11-24');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (2, 1, 1, '2021-07-18', '2021-06-25', '2021-04-06', '2021-10-20');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (3, 9, 1, '2021-06-13', '2021-01-25', '2021-11-25', '2021-01-30');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (4, 12, 3, '2021-10-16', '2021-05-24', '2021-07-21', '2021-02-06');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (5, 3, 4, '2021-03-12', '2021-09-05', '2021-11-13', '2021-11-16');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (6, 11, 4, '2021-02-06', '2020-12-19', '2021-08-01', '2020-12-18');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (7, 6, 1, '2021-02-21', '2021-01-13', '2021-01-25', '2021-10-07');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (8, 4, 3, '2021-01-11', '2020-11-30', '2021-02-11', '2021-06-18');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (9, 14, 3, '2021-02-23', '2021-11-16', '2020-12-01', '2021-07-19');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (10, 9, 1, '2021-05-29', '2020-12-24', '2021-06-03', '2020-12-19');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (11, 12, 3, '2020-12-03', '2021-04-23', '2021-07-24', '2021-06-13');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (12, 5, 1, '2021-01-22', '2020-12-16', '2021-02-26', '2021-01-26');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (13, 2, 1, '2021-03-02', '2021-05-04', '2020-12-27', '2021-02-08');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (14, 1, 3, '2021-01-03', '2021-03-27', '2021-02-12', '2021-01-16');
insert into UserDepartment (id, User_Rid, Department_Id, Start_Date, End_Date, Create_At, Updated_At) values (15, 11, 3, '2021-10-30', '2020-12-23', '2021-08-28', '2021-01-19');

insert into roles (id, `name`, create_at, updated_at) values (1, 'Giám đốc', '2021-09-02', '2021-08-25');
insert into roles (id, `name`, create_at, updated_at) values (2, 'Trưởng phòng', '2021-11-05', '2021-05-20');
insert into roles (id, `name`, create_at, updated_at) values (3, 'Phó phòng', '2021-02-28', '2021-02-06');
insert into roles (id, `name`, create_at, updated_at) values (4, 'Nhân viên', '2021-07-18', '2021-11-22');
insert into roles (id, `name`, create_at, updated_at) values (5, 'CTV', '2021-04-21', '2021-07-25');


insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (1, 3, 1, '2021-07-24', '2021-02-08', '2021-02-08', '2021-02-05');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (2, 13, 5, '2021-07-03', '2020-12-28', '2021-03-24', '2020-12-04');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (3, 9, 1, '2021-09-28', '2021-08-02', '2021-03-17', '2021-07-28');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (4, 10, 1, '2021-06-13', '2021-09-27', '2021-05-03', '2020-12-19');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (5, 2, 3, '2021-02-23', '2021-08-12', '2021-03-13', '2021-04-22');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (6, 8, 1, '2021-08-28', '2020-12-28', '2021-08-19', '2021-08-25');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (7, 13, 2, '2021-04-02', '2021-01-25', '2021-01-23', '2021-07-17');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (8, 10, 5, '2021-11-08', '2020-11-28', '2021-02-10', '2021-04-13');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (9, 9, 4, '2021-08-01', '2021-02-23', '2021-09-12', '2021-05-23');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (10, 7, 4, '2021-11-18', '2021-06-28', '2021-04-30', '2021-02-21');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (11, 3, 2, '2021-10-28', '2020-12-15', '2021-01-08', '2021-08-05');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (12, 14, 1, '2021-04-24', '2021-05-17', '2021-09-14', '2021-05-05');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (13, 2, 1, '2021-06-06', '2021-02-07', '2020-11-29', '2021-07-28');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (14, 6, 4, '2020-12-05', '2020-12-07', '2021-01-16', '2021-07-14');
insert into user_role (id, user_department_id, role_id, start_date, end_date, create_at, updated_at) values (15, 4, 1, '2021-08-20', '2021-05-20', '2021-02-24', '2021-04-05');

insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (1, 6, 527, 5, 2008, '2021-07-10', '2021-09-06');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (2, 5, 1200, 7, 2012, '2021-07-22', '2021-04-26');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (3, 9, 1074, 2, 1993, '2021-03-14', '2021-06-15');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (4, 5, 904, 10, 2000, '2021-09-12', '2021-08-05');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (5, 14, 1129, 7, 1992, '2020-12-26', '2021-07-10');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (6, 9, 529, 6, 1992, '2021-10-04', '2021-07-24');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (7, 15, 1307, 6, 2006, '2021-08-08', '2021-01-14');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (8, 7, 1725, 3, 1957, '2021-11-01', '2021-08-20');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (9, 1, 892, 1, 2001, '2021-01-04', '2021-03-12');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (10, 8, 1544, 6, 2007, '2021-05-05', '2021-08-29');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (11, 11, 734, 10, 2011, '2021-11-13', '2020-12-21');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (12, 12, 1155, 7, 2009, '2021-04-13', '2021-07-20');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (13, 14, 1713, 5, 2009, '2021-02-28', '2021-10-16');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (14, 3, 1906, 6, 1998, '2021-09-26', '2021-08-20');
insert into salary (id, users_role_id, total_salary, `month`, `year`, create_at, updated_at) values (15, 1, 596, 2, 1985, '2021-06-09', '2021-08-22');

insert into salary_detail_type (id, `name`, create_at, updated_at) values (1, 'jcb', '2021-07-30', '2021-07-23');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (2, 'jcb', '2021-06-13', '2021-05-05');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (3, 'laser', '2021-08-31', '2021-02-27');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (4, 'jcb', '2021-01-15', '2021-04-07');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (5, 'diners-club-carte-blanche', '2021-05-22', '2021-04-07');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (6, 'diners-club-enroute', '2021-10-04', '2021-06-19');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (7, 'china-unionpay', '2021-09-30', '2021-06-08');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (8, 'jcb', '2021-02-13', '2021-11-15');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (9, 'maestro', '2021-03-16', '2021-06-30');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (10, 'china-unionpay', '2021-06-17', '2021-08-03');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (11, 'jcb', '2021-03-29', '2021-06-17');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (12, 'jcb', '2021-10-09', '2020-12-06');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (13, 'switch', '2021-11-16', '2020-12-23');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (14, 'mastercard', '2021-03-13', '2021-02-23');
insert into salary_detail_type (id, `name`, create_at, updated_at) values (15, 'maestro', '2021-04-23', '2021-11-24');

insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (1, 1884, 15, 7, 1);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (2, 1446, 9, 1, 2);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (3, 1321, 14, 4, 3);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (4, 581, 3, 2, 4);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (5, 638, 12, 15, 1);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (6, 1704, 4, 6, 2);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (7, 1271, 7, 4, 3);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (8, 807, 6, 10, 4);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (9, 1525, 15, 9, 1);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (10, 1847, 9, 3, 2);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (11, 868, 4, 10, 3);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (12, 613, 10, 3, 4);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (13, 1190, 10, 11, 1);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (14, 1282, 11, 8, 2);
insert into salary_detail (id, amount, salary_id, salary_detail_type_id, operation) values (15, 1723, 14, 4, 3);

SELECT total_salary, users_role_id
FROM salary
LIMIT 5;

SELECT salary.total_salary
FROM salary, user_role
WHERE salary.users_role_id = user_role.id
AND user_role.user_department_id = 1;


