/*
    RIGHT JOIN
        ส่งคืนระเบียนทั้งหมดจากตารางด้านขวา (table2) และระเบียนที่ตรงกันจากตารางด้านซ้าย (table1) ผลลัพธ์คือ 0 รายการจากด้านซ้าย หากไม่มีรายการที่ตรงกัน

    Syntax
        SELECT column_name(s)
        FROM table1
        RIGHT JOIN table2
        ON table1.column_name = table2.column_name;
*/

--// Example
    SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
    FROM Orders
    RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
    ORDER BY Orders.OrderID;

    -- RIGHT JOIN ส่งคืนระเบียนทั้งหมดจากตารางด้านขวา (Employees) แม้ว่าจะไม่มีรายการที่ตรงกันในตารางด้านซ้าย (Orders)

** Link => https://www.w3schools.com/sql/sql_join_right.asp