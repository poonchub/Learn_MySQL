/*
    INNER JOIN
        จะเลือกระเบียนที่มีค่าที่ตรงกันในทั้งสองตาราง

    Syntax
        SELECT column_name(s)
        FROM table1
        INNER JOIN table2
        ON table1.column_name = table2.column_name;
*/

--// Example
    SELECT ProductID, ProductName, CategoryName
    FROM Products
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

    -- ระบุชื่อตาราง
    SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
    FROM Products
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

    -- JOIN และ INNER JOIN จะส่งกลับผลลัพธ์เดียวกัน INNER เป็นประเภทการ join เริ่มต้นสำหรับ JOIN ดังนั้นเมื่อเขียน JOIN จริงๆแล้วจะเขียน INNER JOIN 
    SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
    FROM Products
    JOIN Categories ON Products.CategoryID = Categories.CategoryID;

--// JOIN Three Tables
    SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
    FROM ((Orders
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
    INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID)

** link => https://www.w3schools.com/sql/sql_join_inner.asp