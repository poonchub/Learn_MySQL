/*
    LIKE Operator
        ค้นหารูปแบบ (ใช้ในส่วนคำสั่ง WHERE)
        มีไวด์การ์ดสองตัวที่มักใช้ร่วมกับตัวดำเนินการ LIKE
            - เครื่องหมายเปอร์เซ็นต์ % แสดงถึงศูนย์ หนึ่ง หรือหลายอักขระ
            - เครื่องหมายขีดล่าง _ หมายถึงอักขระตัวเดียว

        โครงสร้าง
            SELECT column1, column2, ... FROM table_name
            WHERE columnN LIKE pattern;

*/

--// The % Wildcard
    -- เลือกลูกค้าทั้งหมดที่ขึ้นต้นด้วยตัวอักษร "a"
    SELECT * FROM Customers
    WHERE CustomerName LIKE 'a%';

    -- ส่งคืนลูกค้าทั้งหมดจากเมืองที่มีตัวอักษร 'L'
    SELECT * FROM Customers
    WHERE city LIKE '%L%';

    -- ส่งคืนลูกค้าทั้งหมดที่ขึ้นต้นด้วย 'a' หรือเริ่มต้นด้วย 'b'
    SELECT * FROM Customers
    WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

    -- ส่งคืนลูกค้าทั้งหมดที่ลงท้ายด้วย 'a'
    SELECT * FROM Customers
    WHERE CustomerName LIKE '%a';

    -- ส่งคืนลูกค้าทั้งหมดที่ขึ้นต้นด้วย "b" และลงท้ายด้วย "s"
    SELECT * FROM Customers
    WHERE CustomerName LIKE 'b%s';

    -- ส่งคืนลูกค้าทั้งหมดที่มีวลี 'or'
    SELECT * FROM Customers
    WHERE CustomerName LIKE '%or%';

--// The _ Wildcard
    -- ส่งลูกค้าทั้งหมดจากเมืองที่ขึ้นต้นด้วย 'L' ตามด้วยอักขระตัวแทนหนึ่งตัว จากนั้น 'nd' และอักขระตัวแทนสองตัว
    SELECT * FROM Customers
    WHERE city LIKE 'L_nd__';

    -- คืนลูกค้าทั้งหมดด้วย City โดยขึ้นต้นด้วยตัวอักษรใดก็ได้ ตามด้วย "ondon"
    SELECT * FROM Customers
    WHERE City LIKE '_ondon';