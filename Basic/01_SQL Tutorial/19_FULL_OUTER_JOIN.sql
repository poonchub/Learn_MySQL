/*
    FULL OUTER JOIN
        ส่งคืนระเบียนทั้งหมดเมื่อมีการจับคู่ในระเบียนตารางด้านซ้าย (table1) หรือด้านขวา (table2) เคล็ดลับ: FULL OUTER JOIN และ FULL JOIN เหมือนกัน

    Syntax
        SELECT column_name(s)
        FROM table1
        FULL OUTER JOIN table2
        ON table1.column_name = table2.column_name
        WHERE condition;
*/

--// Example
    SELECT Customers.CustomerName, Orders.OrderID
    FROM Customers
    FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
    ORDER BY Customers.CustomerName;

    -- FULL OUTER JOIN ส่งคืนบันทึกที่ตรงกันทั้งหมดจากทั้งสองตาราง ไม่ว่าตารางอื่นจะตรงกันหรือไม่ก็ตาม ดังนั้น หากมีแถวใน "Customers" ที่ไม่มีรายการที่ตรงกันใน "Orders" หรือหากมีแถวใน "Orders" ที่ไม่มีรายการที่ตรงกันใน "Customers" แถวเหล่านั้นก็จะถูกแสดงรายการด้วยเช่นกัน

** Link => https://w3schools.com/sql/sql_join_full.asp