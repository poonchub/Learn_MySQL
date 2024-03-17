/*
    SELECT FROM
        ใช้เพื่อเลือกข้อมูลจากฐานข้อมูล
        โครงสร้าง
            SELECT column1, column2, ... FROM table_name;
            SELECT * FROM table_name;   เลือกข้อมูลทั้งหมดจากตาราง

    SELECT DISTINCT FROM
        ใช้เพื่อเลือกเฉพาะข้อมูลที่แตกต่างกัน
        โครงสร้าง
            SELECT DISTINCT column1, column2, ... FROM table_name;

    SELECT COUNT FROM
        ใช้เพื่อนับจำนวนข้อมูลที่เลือก
        โครงสร้าง
            SELECT Count(column1, column2) AS newColumn FROM table_name;
    
    SELECT FROM WHERE
        ในเพื่อเลือกข้อมูลแบบกรองตามเงื่อนไข
        โครงสร้าง
            SELECT column1, column2, ... FROM table_name
            WHERE condition;
    
*/

-- SELECT FROM
    SELECT CustomerName, City FROM Customers;
    SELECT * FROM Customers;

-- SELECT DISTINCT 
    SELECT DISTINCT Country FROM Customers;

-- SELECT COUNT
    SELECT Count(*) AS DistinctCountries
    FROM (SELECT DISTINCT Country FROM Customers);

-- SELECT FROM WHERE
    SELECT * FROM Customers
    WHERE Country='Mexico';
    SELECT * FROM Customers
    WHERE CustomerID > 80;