/*
    Operator
        =           เท่ากับ
        >, !<       มากกว่า, ไม่น้อยกว่า
        <, !>       น้อยกว่า, ไม่มากกว่า
        >=          มากกว่าหรือเท่ากับ
        <=          น้อยกกว่าหรือเท่ากับ
        <>, !=      ไม่เท่ากับ

        BETWEEN     ระหว่างช่วงที่กำหนด

        IN          เพื่อระบุค่าที่เป็นไปได้หลายค่าสำหรับคอลัมน์

        IS NULL (ใช้เพื่อทดสอบค่าว่าง)
            SELECT column_names
            FROM table_name
            WHERE column_name IS NULL;

        IS NOT NULL (ใช้เพื่อทดสอบค่าที่ไม่ว่าง)
            SELECT column_names
            FROM table_name
            WHERE column_name IS NOT NULL;
*/

-- IS NULL
    -- ต่อไปนี้แสดงรายการลูกค้าทั้งหมดที่มีค่า NULL ในช่อง "Address"
    SELECT * FROM Customers WHERE Address IS NULL;

-- IS NOT NULL
    -- ต่อไปนี้แสดงรายการลูกค้าทั้งหมดที่ไม่มีค่า NULL ในช่อง "Address"
    SELECT * FROM Customers WHERE Address IS NOT NULL;

