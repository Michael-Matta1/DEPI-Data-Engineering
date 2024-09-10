-- Creating FactSales Table
CREATE TABLE FactSales (
    SaleID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES DimCustomer(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES DimProduct(ProductID),
    TimeID INT FOREIGN KEY REFERENCES DimTime(TimeID),
    Quantity INT,
    TotalAmount DECIMAL(10, 2)
);
GO

