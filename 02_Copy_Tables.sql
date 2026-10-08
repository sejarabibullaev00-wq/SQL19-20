USE ShopDB;
GO

-- Группа ShopData1

SELECT
    BusinessEntityID,
    PersonType,
    NameStyle,
    Title,
    FirstName,
    MiddleName,
    LastName,
    Suffix,
    EmailPromotion
INTO dbo.Person ON ShopData1
FROM AdventureWorks2019.Person.Person;
GO


SELECT
    AddressID,
    AddressLine1,
    AddressLine2,
    City,
    StateProvinceID,
    PostalCode,
    SpatialLocation,
    rowguid,
    ModifiedDate
INTO dbo.Address ON ShopData1
FROM AdventureWorks2019.Person.Address;
GO


SELECT
    ProductID,
    Name,
    ProductNumber,
    MakeFlag,
    FinishedGoodsFlag,
    Color,
    SafetyStockLevel,
    ReorderPoint,
    StandardCost,
    ListPrice
INTO dbo.Product ON ShopData1
FROM AdventureWorks2019.Production.Product;
GO


-- Группа ShopData2

SELECT
    BusinessEntityID,
    AccountNumber,
    Name,
    CreditRating,
    PreferredVendorStatus,
    ActiveFlag,
    PurchasingWebServiceURL,
    ModifiedDate
INTO dbo.Vendor ON ShopData2
FROM AdventureWorks2019.Purchasing.Vendor;
GO


SELECT
    BusinessEntityID,
    NationalIDNumber,
    LoginID,
    OrganizationNode,
    OrganizationLevel,
    JobTitle,
    BirthDate,
    MaritalStatus,
    Gender,
    HireDate
INTO dbo.Employee ON ShopData2
FROM AdventureWorks2019.HumanResources.Employee;
GO


SELECT
    SalesOrderID,
    RevisionNumber,
    OrderDate,
    DueDate,
    ShipDate,
    Status,
    OnlineOrderFlag,
    SalesOrderNumber,
    PurchaseOrderNumber,
    AccountNumber,
    CustomerID,
    SalesPersonID,
    TerritoryID
INTO dbo.SalesOrderHeader ON ShopData2
FROM AdventureWorks2019.Sales.SalesOrderHeader;
GO
