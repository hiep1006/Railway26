USE testing_system_assignment_1;
INSERT INTO Department(DepartmentName)
VALUE	("HR"),
		("SALE"),
        ("MARKETING");

INSERT INTO `Position`(PositionName)
VALUE	("Truong phong"),
		("Pho phong"),
        ("Nhan vien");
        
INSERT INTO `Account`(Email, Username, FullName, DepartmentID, PositionID, CreateDate)
VALUES	("truongphongHR@123.com" , "truongphongHR" , "Nguyen Van A" , 1 , 1, "2021-11-7"),
		( "PhoPhongHR@123.com" , "PhoPhongHR" , "Nguyen Van B" , 1 , 2 , "2021-11-7"),
        ( "NhanVienHR@123.com" , "NhanVienHR", "Nguyen Van C" , 1 , 3 , "2021-11-7"),
        ( "TruongPhongSALE@123.com" , "TruongPhongSALE", "Nguyen Van D" , 2 , 1 , "2021-11-7"),
        ( "PhoPhongSALE@123.com" , "PhoPhongSALE", "Nguyen Van E" , 2 , 2 , "2021-11-7"),
        ( "NhanVienSale@123.com" , "NhanVienSale", "Nguyen Van F" , 2 , 3 , "2021-11-7"),
        ( "TruongPhongMarketing@123.com" , "TruongPhongMarketing" , "Nguyen Van G" , 3 , 1 , "2021-11-7"),
        ( "PhoPhongMarketing@123.com" , "PhoPhongMarketing" , "Nguyen Van H" , 3 , 2 , "2021-11-7"),
        ( "NhanVienMarketing@123.com" , "NhanVienMarketing" , "Nguyen Van I" , 3 , 3 , "2021-11-7");
DELETE FROM `Account` WHERE AccountID = 1;
SELECT * FROM Department;
SELECT * FROM `Position`;
SELECT * FROM `Account`;