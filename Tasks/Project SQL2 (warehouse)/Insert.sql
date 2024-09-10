INSERT INTO DimCustomer (CustomerID, CustomerName, Email, Phone, Address) VALUES
(1, 'Michael', 'michael@example.com', '123', '1 St, City, Country'),
(2, 'Ahmed', 'ahmed@example.com', '234', '2 St, City, Country'),
(3, 'Mohamed', 'mohamed@example.com', '345', '3 St, City, Country'),
(4, 'Mostafa', 'mostafa@example.com', '456', '4 St, City, Country'),
(5, 'Marawan', 'marawan@example.com', '567', '5 St, City, Country'),
(6, 'Youssef', 'youssef@example.com', '678', '6 St, City, Country'),
(7, 'Salah', 'salah@example.com', '789', '7 St, City, Country'),
(8, 'Omar', 'omar@example.com', '890', '8 St, City, Country');
GO

INSERT INTO DimProduct (ProductID, ProductName, Category, Price) VALUES
(1, 'Smartphone A', 'Electronics', 299.99),
(2, 'Laptop B', 'Electronics', 799.99),
(3, 'Headphones C', 'Accessories', 59.99),
(4, 'Smartwatch D', 'Accessories', 199.99),
(5, 'Tablet E', 'Electronics', 399.99),
(6, 'Camera F', 'Electronics', 499.99),
(7, 'Speaker G', 'Accessories', 89.99),
(8, 'Keyboard H', 'Accessories', 49.99);
GO

INSERT INTO DimTime (TimeID, Date, Month, Year) VALUES
(1, '2024-01-01', 1, 2024),
(2, '2024-02-01', 2, 2024),
(3, '2024-03-01', 3, 2024),
(4, '2024-04-01', 4, 2024),
(5, '2024-05-01', 5, 2024),
(6, '2024-06-01', 6, 2024),
(7, '2024-07-01', 7, 2024),
(8, '2024-08-01', 8, 2024);
GO

INSERT INTO FactSales (SaleID, CustomerID, ProductID, TimeID, Quantity, TotalAmount) VALUES
(1, 1, 1, 1, 1, 299.99),
(2, 2, 2, 2, 2, 1599.98),
(3, 3, 3, 3, 3, 179.97),
(4, 4, 4, 4, 1, 199.99),
(5, 5, 5, 5, 1, 399.99),
(6, 6, 6, 6, 1, 499.99),
(7, 7, 7, 7, 2, 179.98),
(8, 8, 8, 8, 1, 49.99);
GO
