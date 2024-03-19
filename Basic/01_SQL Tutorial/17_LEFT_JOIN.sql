/*
    LEFT JOIN
        ส่งคืนระเบียนทั้งหมดจากตารางด้านซ้าย (table1) และระเบียนที่ตรงกันจากตารางด้านขวา (table2) ผลลัพธ์คือ 0 บันทึกจากด้านขวา หากไม่มีรายการที่ตรงกัน

    Syntax
        SELECT column_name(s)
        FROM table1
        LEFT JOIN table2
        ON table1.column_name = table2.column_name;
*/

--// Example
    SELECT Customers.CustomerName, Orders.OrderID
    FROM Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    ORDER BY Customers.CustomerName;

    -- LEFT JOIN ส่งคืนระเบียนทั้งหมดจากตารางด้านซ้าย (Customers) แม้ว่าจะไม่มีรายการที่ตรงกันในตารางด้านขวา (Orders)

** Link => https://www.w3schools.com/sql/sql_join_left.asp