 CREATE OR REPLACE WAREHOUSE AWWarehouse;
CREATE OR REPLACE DATABASE AWDatabase;
CREATE OR REPLACE SCHEMA AWSchema;
CREATE OR REPLACE STAGE AWStage ;
PUT file:///Users/farahaboucha/Desktop/Projet_BI_DSMI/*.csv @AWStage ; 

CREATE OR REPLACE TABLE OrderDetails 
( OrderDate DATE, 
StockDate DATE, 
OrderNumber STRING, 
ProductKey INT, 
CustomerKey INT, 
TerritoryKey INT, 
OrderLineItem INT, 
OrderQuantity INT );

CREATE OR REPLACE TABLE Customer 
(CustomerKey INT,
Prefix STRING ,
FirstName STRING,
LastName STRING,
BirthDate DATE,
MaritalStatus STRING,
Gender STRING,
EmailAddress STRING,
AnnualIncome STRING,
TotalChildren INT,
EducationLevel STRING,
Occupation STRING,
HomeOwner BOOLEAN );

CREATE OR REPLACE TABLE SalesTerritory 
( SalesTerritoryKey INT, 
Region STRING, 
Country STRING, 
Continent STRING );


CREATE OR REPLACE TABLE Product 
(ProductKey INT,
ProductSubcategoryKey INT,
ProductSKU STRING,
ProductName STRING,
ModelName STRING,
ProductDescription STRING,
ProductColor STRING,
ProductSize STRING,
ProductStyle STRING,
ProductCost FLOAT,
ProductPrice FLOAT );

CREATE OR REPLACE TABLE ProductSubcategory 
(ProductSubcategoryKey INT,
SubcategoryName STRING,
ProductCategoryKey INT);

CREATE OR REPLACE TABLE ProductCategory 
(ProductCategoryKey INT, 
CategoryName STRING );