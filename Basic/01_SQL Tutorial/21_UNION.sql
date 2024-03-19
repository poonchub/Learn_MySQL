/*
    SQL UNION Operator
        UNION ใช้เพื่อรวมชุดผลลัพธ์ของคำสั่ง SELECT สองคำสั่งขึ้นไป  
        - ทุกคำสั่ง SELECT ภายใน UNION จะต้องมีจำนวนคอลัมน์เท่ากัน 
        - คอลัมน์จะต้องมีประเภทข้อมูลที่คล้ายกัน
        - คอลัมน์ในทุกคำสั่ง SELECT จะต้องอยู่ในลำดับเดียวกัน

    UNION Syntax
        SELECT column_name(s) FROM table1
        UNION
        SELECT column_name(s) FROM table2;

    // UNION เลือกเฉพาะค่าที่แตกต่างกันตามค่าเริ่มต้น หากต้องการอนุญาตให้มีค่าซ้ำกัน ให้ใช้ UNION ALL

    UNION ALL Syntax
        SELECT column_name(s) FROM table1
        UNION ALL
        SELECT column_name(s) FROM table2;
*/

--// Example 
    -- ส่งคืนเมือง (เฉพาะค่าที่แตกต่างกัน) จากทั้งตาราง "Customers" และ "Suppliers"
    SELECT City FROM Customers
    UNION
    SELECT City FROM Suppliers
    ORDER BY City;

    -- ส่งคืนเมือง (ค่าที่ซ้ำกันด้วย) จากทั้งตาราง "Customers" และ "Suppliers"
    SELECT City FROM Customers
    UNION ALL
    SELECT City FROM Suppliers
    ORDER BY City;

--// SQL UNION With WHERE
    -- ส่งคืน city ในเยอรมัน (เฉพาะค่าที่แตกต่างกัน) จากทั้งตาราง "customers" และ "suppliers"
    SELECT City, Country FROM Customers
    WHERE Country='Germany'
    UNION
    SELECT City, Country FROM Suppliers
    WHERE Country='Germany'
    ORDER BY City;

    -- ส่งคืน city ในเยอรมัน (ค่าที่ซ้ำกันด้วย) จากทั้งตาราง "customers" และ "suppliers"
    SELECT City, Country FROM Customers
    WHERE Country='Germany'
    UNION ALL
    SELECT City, Country FROM Suppliers
    WHERE Country='Germany'
    ORDER BY City;