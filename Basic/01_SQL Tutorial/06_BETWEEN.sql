/*
    BETWEEN Operator
        ตัวดำเนินการ BETWEEN เลือกค่าภายในช่วงที่กำหนด ค่าอาจเป็นตัวเลข ข้อความ หรือวันที่

    โครงสร้าง
        SELECT column_name(s)
        FROM table_name
        WHERE column_name BETWEEN value1 AND value2;
*/

--// BETWEEN
    -- เลือกผลิตภัณฑ์ทั้งหมดที่มีราคาระหว่าง 10 ถึง 20
    SELECT * FROM Products
    WHERE Price BETWEEN 10 AND 20;

--// NOT BETWEEN
    -- หากต้องการแสดงผลิตภัณฑ์นอกช่วงของตัวอย่างก่อนหน้านี้ ให้ใช้ NOT BETWEEN
    SELECT * FROM Products
    WHERE Price NOT BETWEEN 10 AND 20;

--// BETWEEN with IN
    -- เลือกผลิตภัณฑ์ทั้งหมดที่มีราคาระหว่าง 10 ถึง 20 นอกจากนี้ CategoryID ต้องเป็น 1,2 หรือ 3
    SELECT * FROM Products
    WHERE Price BETWEEN 10 AND 20
    AND CategoryID IN (1,2,3);

--// BETWEEN Text Values
    -- เลือกผลิตภัณฑ์ทั้งหมดที่มี ProductName ตามลำดับตัวอักษรระหว่าง Carnarvon Tigers และ Mozzarella di Giovanni
    SELECT * FROM Products
    WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
    ORDER BY ProductName;

    -- เลือกผลิตภัณฑ์ทั้งหมดที่มีชื่อผลิตภัณฑ์ระหว่าง Carnarvon Tigers และ Cajun Seasoning ของ Chef Anton
    SELECT * FROM Products
    WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
    ORDER BY ProductName;

--// BETWEEN Dates
    -- เลือกคำสั่งซื้อทั้งหมดที่มี OrderDate ระหว่าง '01-July-1996' ถึง '31-July-1996'
    SELECT * FROM Orders
    WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;

    SELECT * FROM Orders
    WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';