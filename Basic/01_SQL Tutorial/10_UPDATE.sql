/*
    UPDATE 
        อัพเดตข้อมูลในฐานข้อมูล
        โครงสร้าง
            UPDATE table_name   
            SET column1 = value1, column2 = value2, ...
            WHERE condition;    // ระวัง!! ถ้าไม่ระบุจะอัพเดตทั้งตาราง
*/

-- Example  อัพเดตลูกค้ารายแรก (CustomerID = 1) ด้วยผู้ติดต่อใหม่และเมืองใหม่
    UPDATE Customers
    SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
    WHERE CustomerID = 1;

-- Example  อัพเดต ContactName ทั้งหมดเป็น 'Juan'
    UPDATE Customers
    SET ContactName='Juan';