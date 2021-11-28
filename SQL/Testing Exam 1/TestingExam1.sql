DROP DATABASE IF EXISTS Testing_Exam_1;
CREATE DATABASE Testing_Exam_1;
USE Testing_Exam_1;
CREATE TABLE Customer(
		CustomerId INT AUTO_INCREMENT PRIMARY KEY,
        CustomerName VARCHAR(50) NOT NULL,
        Phone CHAR(12) UNIQUE NOT NULL ,
        Email VARCHAR(50) UNIQUE NOT NULL,
        Address VARCHAR(100),
        Note VARCHAR(100)
);
CREATE TABLE Car(
		CarId INT PRIMARY KEY,
        Maker ENUM("HONDA", "TOYOTA", "NISSAN") NOT NULL,
        Model VARCHAR(50) NOT NULL,
        `Year` YEAR NOT NULL,
        Color VARCHAR(15) NOT NULL,
        Note VARCHAR(100)
);
CREATE TABLE CarOrder(
		OrderId INT PRIMARY KEY AUTO_INCREMENT,
        CustomerId INT NOT NULL,
        FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
        CarId INT NOT NULL,
        FOREIGN KEY (CarId) REFERENCES Car(CarId),
        Amount INT DEFAULT 1,
        SalePrice BIGINT NOT NULL,
        OrderDate DATE NOT NULL,
        DeliveryDate Date NOT NULL,
		DeliveryAddress VARCHAR(100) NOT NULL,
        `Status` TINYINT DEFAULT 0,
        Note VARCHAR(100)
);

insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Lizabeth Lakes', '179 253 8583', 'llakes0@ovh.net', '9 Reindahl Road', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Bancroft McGraith', '930 830 1538', 'bmcgraith1@godaddy.com', '4196 Heath Pass', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Maribel McNiff', '651 704 9480', 'mmcniff2@bbc.co.uk', '491 Lunder Place', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Maurise Reuther', '754 244 5172', 'mreuther3@pinterest.com', '2810 Dawn Court', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Salvatore Davydenko', '952 551 9415', 'sdavydenko4@pbs.org', '56745 Oak Street', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Marietta Polfer', '730 526 1155', 'mpolfer5@cbc.ca', '84 Stephen Terrace', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Suzanna Claricoats', '316 155 3648', 'sclaricoats6@opera.com', '95 Hanover Circle', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Prentice Duetsche', '857 682 9615', 'pduetsche7@reference.com', '40 Jenna Avenue', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('Darsie Greatbanks', '715 916 1573', 'dgreatbanks8@rediff.com', '97 Emmet Way', null);
insert into Customer (CustomerName, Phone, Email, Address, Note) values ('York Brucker', '137 150 6297', 'ybrucker9@edublogs.org', '94 Lighthouse Bay Plaza', null);

INSERT INTO Car VALUES	(1, "HONDA", "Brio", 2021, "Cam", NULL),
						(2, "HONDA", "CIVIC", 2021, "Đỏ", NULL),
                        (3, "TOYOTA", "wigo", 2021, "Trắng", NULL),
                        (4, "TOYOTA", "vios", 2021, "Trắng", NULL),
                        (5, "NISSAN", "Almera", 2021, "Cam", NULL);
                        
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (5, 1, 1, 197287318, '2020/12/21', '2021/10/09', '47 Hanson Crossing', 2);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (5, 1, 5, 605578105, '2021/07/30', '2021/04/08', '983 1st Pass', 2);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (3, 3, 8, 197007899, '2021/09/17', '2021/11/23', '5 Sunbrook Circle', 0);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (2, 1, 2, 328292779, '2021/03/01', '2021/04/03', '1 Fisk Hill', 0);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (8, 3, 2, 598803281, '2021/11/08', '2021/03/22', '7 Maywood Lane', 2);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (4, 4, 1, 626860588, '2021/06/27', '2021/07/31', '380 Tennyson Junction', 0);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (4, 5, 2, 416462044, '2021/03/27', '2021/01/24', '21 Eastlawn Plaza', 1);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (9, 1, 6, 393925614, '2021/08/10', '2021/01/06', '264 Dawn Crossing', 2);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (7, 4, 10, 105067323, '2018/10/14', '2021/02/02', '502 Schurz Pass', 0);
insert into CarOrder (CustomerId, CarId, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`) values (5, 4, 7, 311840426, '2019/02/11', '2021/02/25', '8 Golf View Lane', 2);

-- 2
SELECT Customer.CustomerName, CarOrder.Amount
FROM Customer, CarOrder
WHERE Customer.CustomerId = CarOrder.CustomerId
ORDER BY CarOrder.Amount;

-- 3
SET GLOBAL log_bin_trust_function_creators = 1;
DROP FUNCTION IF EXISTS HangSx_Max;
DELIMITER $$
CREATE FUNCTION HangSx_Max() RETURNS VARCHAR(50)
BEGIN
	DECLARE `Name` VARCHAR(50);
	SELECT Car.Maker INTO  `Name`
    FROM Car , CarOrder
    WHERE Car.CarId = CarOrder.CarId
    GROUP BY Car.Maker 
    HAVING count(CarOrder.OrderId) = (SELECT max(_max) FROM (SELECT count(OrderId) AS _max FROM CarOrder, Car WHERE CarOrder.CarId = Car.CarId  GROUP BY Car.Maker) AS abc) ;
    RETURN `Name`;
END$$
DELIMITER ;

SELECT HangSx_Max();
-- 4
SET SQL_SAFE_UPDATES = 0;
DROP PROCEDURE IF EXISTS Xoa;
DELIMITER $$
CREATE PROCEDURE Xoa()
BEGIN
	DELETE FROM CarOrder
    WHERE `Status` = 2 
    AND year(OrderDate) <= year(now())-1;
    SELECT row_count();
END$$
DELIMITER ;

CALL Xoa();
-- 5
DROP PROCEDURE IF EXISTS don_dat_hang;
DELIMITER $$
CREATE PROCEDURE don_dat_hang(IN CustomerID INT)
BEGIN
	SELECT Customer.CustomerName, CarOrder.OrderId, CarOrder.Amount, Car.Maker
    FROM Customer, CarOrder, Car
    WHERE Customer.CustomerId = CarOrder.CustomerId AND Car.CarId = CarOrder.CarId
    AND CarOrder.CustomerId = CustomerID;
    
END$$
DELIMITER ;

CALL don_dat_hang(4);

