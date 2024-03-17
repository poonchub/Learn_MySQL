/*
    IN Operator
        ตัวดำเนินการ IN ช่วยให้คุณสามารถระบุค่าหลายค่าในส่วนคำสั่ง WHERE
        ตัวดำเนินการ IN เป็นตัวย่อสำหรับหลายเงื่อนไข OR

        โครงสร้าง
            SELECT column_name(s)
            FROM table_name
            WHERE column_name IN (value1, value2, ...);

*/

--// IN
    -- ส่งคืนลูกค้าทั้งหมดจาก 'เยอรมนี', 'ฝรั่งเศส' หรือ 'สหราชอาณาจักร'
    SELECT * FROM Customers
    WHERE Country IN ('Germany', 'France', 'UK');

--// NOT IN
    -- ส่งคืนลูกค้าทั้งหมดที่ไม่ได้มาจาก 'เยอรมนี', 'ฝรั่งเศส' หรือ 'สหราชอาณาจักร'
    SELECT * FROM Customers
    WHERE Country NOT IN ('Germany', 'France', 'UK');

--// IN (SELECT)
    -- ส่งกลับลูกค้าทั้งหมดที่มีคำสั่งซื้อในตาราง  Orders
    SELECT * FROM Customers
    WHERE CustomerID IN (SELECT CustomerID FROM Orders);