/*
    SQL Wildcards
        อักขระตัวแทนใช้เพื่อแทนที่อักขระตั้งแต่หนึ่งตัวขึ้นไปในสตริง
            %       แสดงถึงอักขระตั้งแต่ศูนย์ขึ้นไป 
            _       หมายถึงอักขระตัวเดียว
            []      หมายถึงอักขระเดี่ยวใดๆ ภายในวงเล็บ * 
            ^       หมายถึงอักขระใดๆ ที่ไม่อยู่ในวงเล็บ * 
            -       หมายถึงอักขระตัวใดตัวหนึ่งภายในช่วงที่กำหนด * 
            {}      แสดงถึงอักขระหลีกใดๆ **
*/

--// Using the [] Wildcard  จะส่งกลับผลลัพธ์หากอักขระตัวใดตัวหนึ่งภายในตรงกัน
    -- ส่งคืนลูกค้าทั้งหมดที่ขึ้นต้นด้วย "b", "s" หรือ "p"
    SELECT * FROM Customers
    WHERE CustomerName LIKE '[bsp]%';

--// Using the - Wildcard  ช่วยให้คุณสามารถระบุช่วงของอักขระภายในไวด์การ์ด []
    -- ส่งคืนลูกค้าทั้งหมดที่ขึ้นต้นด้วย "a", "b", "c", "d", "e" หรือ "f"
    SELECT * FROM Customers
    WHERE CustomerName LIKE '[a-f]%';

--// Combine Wildcards
    -- ส่งคืนลูกค้าทั้งหมดที่ขึ้นต้นด้วย "a" และมีความยาวอย่างน้อย 3 ตัวอักษร
    SELECT * FROM Customers
    WHERE CustomerName LIKE 'a__%';

    -- คืนลูกค้าทั้งหมดที่มี "r" ในตำแหน่งที่สอง
    SELECT * FROM Customers
    WHERE CustomerName LIKE '_r%';

--// Without Wildcard
    -- คืนลูกค้าจากสเปนทั้งหมด
    WHERE Country LIKE 'Spain';
