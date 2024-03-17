/*
    DELETE
        ลบข้อมูลจากฐานข้อมูล
        โครงสร้าง
            DELETE FROM table_name 
            WHERE condition;    //ระวัง!! ถ้าไม่ระบุข้อมูลทั้งหมดในตารางจะถูกลบ
*/

-- Example  ลบลูกค้า "Alfreds Futterkiste" ออกจากตาราง "Customers"
    DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Example  ลบแถวทั้งหมดในตาราง "Customers" โดยไม่ลบตาราง
    DELETE FROM Customers;