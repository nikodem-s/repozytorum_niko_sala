use AdventureWorks2017;
--zad 1
BEGIN
SELECT AVG(Rate) as STAWKA FROM HumanResources.EmployeePayHistory
SELECT Employee.BusinessEntityID, NationalIDNumber,JobTitle,BirthDate,Gender,Rate FROM
HumanResources.Employee,HumanResources.EmployeePayHistory
WHERE Employee.BusinessEntityID = EmployeePayHistory.BusinessEntityID
AND
Rate < 17.7588;
END;
--zadanie2
CREATE OR ALTER FUNCTION Zadanie2(@numer INT)

RETURNS TABLE 
AS
RETURN
SELECT ShipDate FROM Sales.SalesOrderHeader 
WHERE SalesOrderID = @numer

		

SELECT * FROM HumanResources.EmployeePayHistory
SELECT * FROM Sales.SalesOrderHeader

--SELECT dbo.Zadanie2(43659);
SELECT * FROM Zadanie2(43659);
--zadanie 3
CREATE PROCEDURE INFORMACJA(@nazwa_produktu VARCHAR(45))
AS BEGIN 
SELECT Production.Product.ProductID,Production.Product.ProductNumber,Production.ProductInventory.Quantity
FROM Production.Product, Production.ProductInventory 
WHERE Production.Product.ProductID = Production.ProductInventory.ProductID
AND
Production.Product.Name = @nazwa_produktu;
END;

EXEC INFORMACJA 'Decal 1';
SELECT * FROM Production.Product
--Zadanie 4
SELECT * FROM Sales.CreditCard
SELECT * FROM Sales.SalesOrderHeader

CREATE OR ALTER FUNCTION Zadanie4(@numer_zamowienia INT)
RETURNS TABLE
AS 
RETURN
SELECT CardNumber FROM Sales.CreditCard,Sales.SalesOrderHeader WHERE
Sales.CreditCard.CreditCardID = Sales.SalesOrderHeader.CreditCardID
AND SalesOrderID = @numer_zamowienia

SELECT * FROM Zadanie4(43659)

--Zadanie 5
CREATE OR ALTER PROCEDURE Zadanie5(@num1 FLOAT, @num2 FLOAT)
AS 
DECLARE @wynik FLOAT
DECLARE @blad VARCHAR(150)
IF @num1<@num2
BEGIN
SET @blad = 'Niewlasciwie zdefiniowane zmienne, wartosc pierwsza powinna byc wieksza niz druga';
SELECT @blad
RETURN;
END;
ELSE
BEGIN
SET @wynik = @num1/@num2;
SELECT ROUND(@wynik,2)
RETURN;
END;

EXEC Zadanie5 @num1 =44, @num2=3;
--Zadanie 6
--zakladam, ze dzien roboczy to 8h
CREATE OR ALTER PROCEDURE Zadanie6(@kraj_id VARCHAR(30)) 
AS BEGIN

SELECT JobTitle AS 'Stanowisko', VacationHours/8 AS 'Dni Urlopowe', SickLeaveHours/8 AS 'Dni Chorobowe' FROM HumanResources.Employee
WHERE NationalIDNumber = @kraj_id;
END;
EXEC Zadanie6 '295847284';
SELECT * FROM HumanResources.Employee

--Zadanie 7
SELECT * FROM Sales.Currency
SELECT * FROM Sales.CurrencyRate

CREATE OR ALTER PROCEDURE kalkulator_walutowy(@pierwsza VARCHAR(10),@druga VARCHAR(10),@kwota FLOAT,@data DATETIME)
AS BEGIN
IF @pierwsza = 'US Dollar'
BEGIN
SELECT FromCurrencyCode, ToCurrencyCode, @kwota*AverageRate as przeliczone
FROM 
Sales.CurrencyRate,Sales.Currency
WHERE CurrencyRate.ToCurrencyCode = Currency.CurrencyCode AND
@data = CurrencyRateDate AND @druga = Currency.Name
RETURN
END
IF @druga = 'US Dollar'
BEGIN
SELECT ToCurrencyCode as 'FromCureencyCode', FromCurrencyCode as 'ToCurrencyCode', @kwota/AverageRate as przeliczone
FROM 
Sales.CurrencyRate,Sales.Currency
WHERE CurrencyRate.ToCurrencyCode = Currency.CurrencyCode AND
@data = CurrencyRateDate AND @pierwsza = Currency.Name
RETURN
END
END
EXEC kalkulator_walutowy @pierwsza = 'EURO', @druga = 'US Dollar', @kwota = 1200, @data ='2011-05-31 00:00:00.000';