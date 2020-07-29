-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, [c].CategoryName
FROM Product as p
JOIN Category as c
ON  [c].Id = p.CategoryId;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id,  s.CompanyName
FROM Shipper as s
JOIN [Order] as o
ON o.ShipVia = s.Id
WHERE o.OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.Id, p.ProductName, od.Quantity
FROM Product as p
JOIN OrderDetail as od
ON p.Id = od.ProductId
WHERE od.OrderId = 10251
ORDER BY asc;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id as [Order ID], c.CompanyName as [Company Name], e.LastName as [Employee Last Name]
FROM [Order] as o
JOIN Customer as c, Employee as e
WHERE c.Id = o.CustomerId
AND o.EmployeeId = e.Id;

--   Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.

SELECT c.CategoryName AS Category_Name, COUNT(p.ProductName) as [Count]
FROM Product as p
  JOIN Category as c
  ON p.CategoryId = c.Id
GROUP BY c.CategoryName
ORDER BY Category_Name;

--  Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.
