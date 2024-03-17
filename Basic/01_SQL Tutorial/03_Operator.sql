/*
    Operator
        =           เท่ากับ
        >, !<       มากกว่า, ไม่น้อยกว่า
        <, !>       น้อยกว่า, ไม่มากกว่า
        >=          มากกว่าหรือเท่ากับ
        <=          น้อยกกว่าหรือเท่ากับ
        <>, !=      ไม่เท่ากับ
        BETWEEN     ระหว่างช่วงที่กำหนด
        LINK        ค้นหารูปแบบ
        IN          เพื่อระบุค่าที่เป็นไปได้หลายค่าสำหรับคอลัมน์

        AND (และ)
            SELECT column1, column2, ... FROM table_name
            WHERE condition1 AND condition2 AND condition3 ...;

        OR (หรือ)
            SELECT column1, column2, ... FROM table_name
            WHERE condition1 OR condition2 OR condition3 ...;

        NOT (ไม่)
            SELECT column1, column2, ... FROM table_name
            WHERE NOT condition;

        IS NULL (ใช้เพื่อทดสอบค่าว่าง)
            SELECT column_names
            FROM table_name
            WHERE column_name IS NULL;

        IS NOT NULL (ใช้เพื่อทดสอบค่าที่ไม่ว่าง)
            SELECT column_names
            FROM table_name
            WHERE column_name IS NOT NULL;
*/

-- AND
    -- เลือกลูกค้าทั้งหมดจากสเปนที่ขึ้นต้นด้วยตัวอักษร 'G':
    SELECT * FROM Customers
    WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

    -- เลือกลูกค้าทั้งหมดโดยที่ประเทศคือ "เยอรมนี" และเมืองคือ "เบอร์ลิน" และรหัสไปรษณีย์สูงกว่า 12000:
    SELECT * FROM Customers
    WHERE Country = 'Germany'
    AND City = 'Berlin' AND PostalCode > 1200;

-- OR
    -- เลือกลูกค้าทั้งหมดจากเยอรมนีหรือสเปน
    SELECT * FROM Customers
    WHERE Country = 'Germany' OR Country = 'Spain';

    -- จะเลือกลูกค้าทั้งหมดโดยที่เมืองคือ "เบอร์ลิน" ชื่อลูกค้าขึ้นต้นด้วยตัวอักษร "G" หรือประเทศคือ "นอร์เวย์"
    SELECT * FROM Customers
    WHERE City = 'Berlin' 
    OR CustomerName LIKE 'G%' OR Country = 'Norway';

-- NOT
    -- เลือกเฉพาะลูกค้าที่ไม่ได้มาจากสเปน
    SELECT * FROM Customers
    WHERE NOT Country = 'Spain';

    -- เลือกลูกค้าที่ไม่ได้ขึ้นต้นด้วยตัวอักษร 'A'
    SELECT * FROM Customers
    WHERE CustomerName NOT LIKE 'A%';

    -- เลือกลูกค้าที่มีรหัสลูกค้าอยู่ระหว่าง 10 ถึง 60
    SELECT * FROM Customers
    WHERE CustomerID NOT BETWEEN 10 AND 60;

    -- เลือกลูกค้าที่ไม่ได้มาจากปารีสหรือลอนดอน
    SELECT * FROM Customers
    WHERE City NOT IN ('Paris', 'London');

-- IS NULL
    -- ต่อไปนี้แสดงรายการลูกค้าทั้งหมดที่มีค่า NULL ในช่อง "Address"
    SELECT * FROM Customers WHERE Address IS NULL;

    -- ต่อไปนี้แสดงรายการลูกค้าทั้งหมดที่ไม่มีค่า NULL ในช่อง "Address"
    SELECT * FROM Customers WHERE Address IS NOT NULL;