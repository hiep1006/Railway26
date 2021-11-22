USE fresher_management;
INSERT INTO Trainee(Full_Name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes, VTI_Account) 
VALUES			("Đinh Ðình Ðôn", "1991-1-2", "male", 7 , 7, 20, "12AB", NULL, "1"),
				("Kiều Chí Khang", "1992-2-2", "male", 8 , 8, 25, "2", NULL, "2"),
				("Thi Quang Minh", "1993-3-2", "male", 9 , 9, 30, "12AB", NULL, "3"),
                ("Lý Ðông Phương", "1994-4-2", "male", 10 , 10, 35, "12AB", NULL, "4"),
                ("Mạnh Danh Sơn", "1995-4-2", "male", 11 ,11, 40, "12AB", NULL, "5"),
                ("Khu Hữu Trung", "1996-5-2", "male", 12 , 12, 45, "12AB", NULL, "6"),
                ("Nghị Phụng Việt", "1997-5-2", "male", 13 , 13, 49, "12AB", NULL, "7"),
                ("Trịnh Minh Ðức", "1998-1-2", "male", 1 , 2, 3, "12AB", NULL, "8"),
                ("Khổng Long Quân", "1999-3-2", "male", 1 , 2, 3, "12AB", NULL, "9"),
                ("Trịnh Hiệp Vũ", "2000-4-2", "male", 1 , 2, 3, "12AB", NULL, "10");
       -- 2
SELECT *
FROM Trainee
WHERE ET_IQ >= 8 AND ET_Gmath >= 8 AND ET_English >= 15;


SELECT month(Birth_Date),count(Full_Name)
FROM Trainee
GROUP BY month(Birth_Date);

       -- 3
SELECT *,year(now()) - year(Birth_Date) AS Tuoi
FROM  Trainee 
WHERE length(Full_Name) = (SELECT max(_max) FROM (SELECT length(Full_Name) AS _max FROM Trainee) AS abc);

-- 4
SELECT *
FROM Trainee
WHERE ET_IQ + ET_Gmath >= 20
AND ET_IQ >= 8
AND ET_Gmath >= 8
AND ET_English >= 18;

-- 5
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Trainee 
WHERE TraineeID = 3;

-- 6
SET SQL_SAFE_UPDATES = 0;
UPDATE Trainee 
SET Training_Class  = 2 
WHERE TraineeID = 5;

SELECT * 
FROM Trainee;


