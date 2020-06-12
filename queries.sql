-- Multi-Table Query Practice


-- Display the ProductName and CategoryName for all products in the database. 
-- Shows 77 records.

SELECT "ProductName", "CategoryName" FROM "ProductDetails_V";

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. 
-- Shows 429 records.

SELECT o."Id", s."CompanyName" from "Shipper" AS s
JOIN "Order" AS o ON o."ShipVia" = s."Id"
WHERE o."OrderDate" < "2012-08-09";


-- Display the name and quantity of the products ordered in order with Id 10251. 
-- Sort by ProductName. Shows 3 records.

SELECT 
    p."ProductName",
    o."Quantity"
FROM "OrderDetail" AS o
JOIN "Product" AS p on o."ProductID" = p."ID"
WHERE "OrderId" = 10251;


-- Display the OrderID, Customer's Company Name and the employee's LastName for 
-- every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT 
    o."Id" "OrderId", 
    c."CompanyName" "CompanyName", 
    e."LastName" "EmployeeLastName"
FROM "Order" AS o 
JOIN "Customer" AS c ON c."Id" = o."CustomerId"
JOIN "Employee" AS e ON e."Id" = o."EmployeeId";
