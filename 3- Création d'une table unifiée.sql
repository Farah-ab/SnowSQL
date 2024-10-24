USE WAREHOUSE AWWarehouse;
USE DATABASE AWDatabase;
USE SCHEMA AWSchema;
USE STAGE AWStage ;

CREATE OR REPLACE TABLE AWMergedData 
(   CustomerKey STRING,
    Prefix STRING,
    FirstName STRING,
    LastName STRING,
    BirthDate STRING,
    MaritalStatus STRING,
    Gender STRING,
    EmailAddress STRING,
    AnnualIncome STRING,
    TotalChildren INT,
    EducationLevel STRING,
    Occupation STRING,
    HomeOwner BOOLEAN,
    ProductCategoryKey INT,
    CategoryName STRING,
    ProductKey INT,
    ProductSubcategoryKey INT,
    ProductSKU STRING,
    ProductName STRING,
    ModelName STRING,
    ProductDescription STRING,
    ProductColor STRING,
    ProductSize STRING,
    ProductStyle STRING,
    ProductCost FLOAT,
    ProductPrice FLOAT,
    OrderDate DATE,
    StockDate DATE,
    OrderNumber STRING,
    TerritoryKey INT,
    OrderLineItem INT,
    OrderQuantity INT,
    Region STRING,
    Country STRING,
    Continent STRING,
    SubcategoryName STRING);

    


