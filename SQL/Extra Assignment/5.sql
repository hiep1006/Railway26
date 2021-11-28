USE adventureworks;
-- Exercise 1: Subquery
-- 1 
SELECT `Name` 
FROM product
WHERE  ProductSubcategoryID = (SELECT ProductSubcategoryID FROM productsubcategory WHERE `Name` = 'Saddles' );

-- 2
SELECT `Name` 
FROM product
WHERE  ProductSubcategoryID IN (SELECT ProductSubcategoryID FROM productsubcategory WHERE `Name` LIKE 'Bo%' );


-- 3
DROP VIEW IF EXISTS ListPrice;
CREATE VIEW ListPrice AS
SELECT ListPrice AS _min
FROM product 
WHERE ProductSubcategoryID = 3;

SELECT *
FROM product
HAVING ListPrice = (SELECT min(_min) FROM ListPrice) 
AND ProductSubcategoryID = 3;

-- Exercise 2: JOIN nhiều bảng
-- 1


-- 3
SELECT SalesPerson.SalesPersonID, SalesPerson.Bonus, SalesPerson.SalesYTD , salesorderheader.SalesOrderID, salesorderheader.OrderDate
FROM SalesPerson , salesorderheader
WHERE SalesPerson.SalesPersonId = salesorderheader.SalesPersonId
AND salesorderheader.OnlineOrderFlag = 0 ;

-- 4

SELECT SalesPerson.SalesPersonID, SalesPerson.Bonus, SalesPerson.SalesYTD , salesorderheader.SalesOrderID, salesorderheader.OrderDate
FROM SalesPerson , salesorderheader
WHERE SalesPerson.SalesPersonId = salesorderheader.SalesPersonId
AND salesorderheader.OnlineOrderFlag = 0 ;


