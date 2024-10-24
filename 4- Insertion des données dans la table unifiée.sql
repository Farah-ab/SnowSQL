USE WAREHOUSE AWWarehouse;
USE DATABASE AWDatabase;
USE SCHEMA AWSchema;
USE STAGE AWStage ;

INSERT INTO AWMergedData (CustomerKey, OrderDate, StockDate, OrderNumber, ProductKey, TerritoryKey, OrderLineItem, OrderQuantity)
SELECT 
SOURCE.CustomerKey,
 SOURCE.OrderDate,
SOURCE.StockDate,
SOURCE.OrderNumber,
SOURCE.ProductKey,
SOURCE.TerritoryKey,
SOURCE.OrderLineItem,
 SOURCE.OrderQuantity
FROM 
 OrderDetails AS SOURCE
WHERE  NOT EXISTS (
SELECT 1
FROM AWMergedData AS TARGET
WHERE TARGET.CustomerKey = SOURCE.CustomerKey) ;

UPDATE AWMergedData AS TARGET
SET 
TARGET.PREFIX = SOURCE.PREFIX,
TARGET.FIRSTNAME = SOURCE.FIRSTNAME,
TARGET.LASTNAME = SOURCE.LASTNAME,
TARGET.BIRTHDATE = SOURCE.BIRTHDATE,
TARGET.MARITALSTATUS = SOURCE.MARITALSTATUS,
TARGET.GENDER = SOURCE.GENDER,
TARGET.EMAILADDRESS = SOURCE.EMAILADDRESS,
TARGET.TOTALCHILDREN = SOURCE.TOTALCHILDREN,
TARGET.EDUCATIONLEVEL = SOURCE.EDUCATIONLEVEL,
TARGET.Occupation = SOURCE.Occupation,
TARGET.HomeOwner = SOURCE.HomeOwner
FROM 
Customer AS SOURCE
WHERE 
TARGET.CustomerKey = SOURCE.CustomerKey;

UPDATE AWMergedData AS TARGET
SET 
TARGET.Region = SOURCE.Region,
TARGET.Country = SOURCE.Country,
TARGET.Continent = SOURCE.Continent
FROM 
SalesTerritory AS SOURCE
WHERE 
TARGET.TerritoryKey = SOURCE.SalesTerritoryKey;

UPDATE AWMergedData AS TARGET
SET 
    TARGET.ProductSubcategoryKey = SOURCE.ProductSubcategoryKey,
    TARGET.ProductSKU = SOURCE.ProductSKU,
    TARGET.ProductName = SOURCE.ProductName,
    TARGET.ModelName = SOURCE.ModelName,
    TARGET.ProductDescription = SOURCE.ProductDescription,
    TARGET.ProductColor = SOURCE.ProductColor,
    TARGET.ProductSize = SOURCE.ProductSize,
    TARGET.ProductStyle = SOURCE.ProductStyle,
    TARGET.ProductCost = SOURCE.ProductCost,
    TARGET.ProductPrice = SOURCE.ProductPrice
FROM 
    Product AS SOURCE
WHERE 
    TARGET.ProductKey = SOURCE.ProductKey;

UPDATE AWMergedData AS TARGET
SET 
    TARGET.SubcategoryName = SOURCE.SubcategoryName,
    TARGET.ProductCategoryKey = SOURCE.ProductCategoryKey
FROM 
    ProductSubcategory AS SOURCE
WHERE 
    TARGET.ProductSubcategoryKey = SOURCE.ProductSubcategoryKey;

UPDATE AWMergedData AS TARGET
SET 
    TARGET.CategoryName = SOURCE.CategoryName
FROM 
    ProductCategory AS SOURCE
WHERE 
    TARGET.ProductCategoryKey = SOURCE.ProductCategoryKey;
