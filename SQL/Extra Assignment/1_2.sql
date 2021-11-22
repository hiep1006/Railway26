DROP DATABASE IF EXISTS fresher_management;
CREATE DATABASE fresher_management;
USE fresher_management;
CREATE TABLE Trainee(
	TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name VARCHAR(50) NOT NULL,
    Birth_Date DATE NOT NULL,
    Gender ENUM("male", "female", "unknown") NOT NULL,
    ET_IQ TINYINT UNSIGNED NOT NULL CHECK ( ET_IQ > 0 AND ET_IQ < 20 ),
    ET_Gmath TINYINT UNSIGNED NOT NULL CHECK ( ET_Gmath > 0 AND ET_Gmath < 20 ),
    ET_English TINYINT UNSIGNED NOT NULL CHECK ( ET_English > 0 AND ET_English < 50 ),
    Training_Class VARCHAR(10) NOT NULL,
    Evaluation_Notes LONGTEXT
);


CREATE TABLE table1(
	ID MEDIUMINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(50),
    `Code` CHAR(5),
    ModifiedDate DATETIME DEFAULT NOW()
);

CREATE TABLE table2(
	ID MEDIUMINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(50),
    BirthDate DATE,
    Gender ENUM("male", "female", "unknown") ,
    IsDeletedFlag BIT
);
ALTER TABLE Trainee ADD VTI_Account VARCHAR(25) NOT NULL UNIQUE;