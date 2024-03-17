/*
    Aggregate Functions
        ฟังก์ชันการรวมคือฟังก์ชันที่ทำการคำนวณชุดของค่า และส่งกลับค่าเดียว

    ฟังก์ชันรวม SQL ที่ใช้กันมากที่สุดคือ
        MIN()   ส่งกลับค่าที่น้อยที่สุดภายในคอลัมน์ที่เลือก
            SELECT MIN(column_name) AS new_column
            FROM table_name
            WHERE condition;

        MAX()   ส่งกลับค่าที่มากที่สุดภายในคอลัมน์ที่เลือก
            SELECT MAX(column_name) AS new_column
            FROM table_name
            WHERE condition;

        COUNT() ส่งกลับจำนวนแถวในชุด
            SELECT COUNT(column_name) AS new_column
            FROM table_name
            WHERE condition;

        SUM()   ส่งกลับผลรวมของคอลัมน์ตัวเลข
            SELECT SUM(column_name) AS new_column
            FROM table_name
            WHERE condition;

        AVG()   ส่งกลับค่าเฉลี่ยของคอลัมน์ตัวเลข
            SELECT AVG(column_name) AS new_column
            FROM table_name
            WHERE condition;

        ** ฟังก์ชันรวมจะละเว้นค่า Null (ยกเว้น COUNT())
*/

-- MIN()    ค้นหาราคาต่ำสุดในคอลัมน์ราคา
    SELECT MIN(Price) AS SmallestPrice
    FROM Products;

    -- ใช้ MIN() กับ GROUP BY
    SELECT MIN(Price) AS SmallestPrice, CategoryID
    FROM Products
    GROUP BY CategoryID;


-- MAX()    ค้นหาราคาสูงสุดในคอลัมน์ราคา
    SELECT MAX(Price)
    FROM Products;

-- COUNT()  ค้นหาจำนวนแถวทั้งหมดในตารางผลิตภัณฑ์
    SELECT COUNT(*) AS [Number of records]
    FROM Products;

    -- ใช้ COUNT() กับ GROUP BY
    SELECT COUNT(*) AS [Number of records], CategoryID
    FROM Products
    GROUP BY CategoryID;

-- SUM()    
    -- ส่งกลับผลรวม Quantity ทั้งหมดในตาราง OrderDetails
    SELECT SUM(Quantity)
    FROM OrderDetails;

    -- ใช้นิพจน์ภายในฟังก์ชัน SUM()
    SELECT SUM(Quantity * 10)
    FROM OrderDetails;

    -- รวม OrderDetails กับ Products และใช้ SUM() เพื่อค้นหายอดรวม
    SELECT SUM(Price * Quantity)
    FROM OrderDetails
    LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;

    -- ใช้ SUM() กับ GROUP BY
    SELECT OrderID, SUM(Quantity) AS [Total Quantity]
    FROM OrderDetails
    GROUP BY OrderID;

-- AVG()    
    -- ค้นหาราคาเฉลี่ยของผลิตภัณฑ์ทั้งหมด
    SELECT AVG(Price)
    FROM Products;

    -- ส่งกลับราคาเฉลี่ยของผลิตภัณฑ์ใน CategoryID = 1
    SELECT AVG(Price) AS [average price]
    FROM Products
    WHERE CategoryID = 1;

    -- ใช้ AVG() กับ GROUP BY
    SELECT AVG(Price) AS AveragePrice, CategoryID
    FROM Products
    GROUP BY CategoryID;