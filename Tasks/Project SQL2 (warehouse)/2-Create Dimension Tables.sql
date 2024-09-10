-- Creating DimCustomer Table
CREATE TABLE DimCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100),
    Email NVARCHAR(100),
    Phone NVARCHAR(20),
    Address NVARCHAR(255)
);
GO

-- Creating DimProduct Table
CREATE TABLE DimProduct (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10, 2)
);
GO

-- Creating DimTime Table
CREATE TABLE DimTime (
    TimeID INT PRIMARY KEY,
    Date DATE,
    Month INT,
    Year INT
);
GO
