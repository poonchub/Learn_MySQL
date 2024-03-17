/*
    ORDER BY
        ใช้เพื่อเรียงลำดับชุดผลลัพธ์จากน้อยไปหามากหรือจากมากไปน้อย
        โครงสร้าง
            SELECT column1, column2, ... FROM table_name
            ORDER BY column1, column2, ... ASC|DESC;
            // ASC  น้อยไปมาก (default)
            // DESC มากไปน้อย
*/

--// ORDER BY
    -- จัดเรียงสินค้าตามราคาต่ำสุดไปสูงสุด
    SELECT * FROM Products
    ORDER BY Price;

--// ORDER BY (DESC)
    -- จัดเรียงสินค้าจากราคาสูงสุดไปต่ำสุด
    SELECT * FROM Products
    ORDER BY Price DESC;

--// ORDER BY Several Columns
    -- เลือกลูกค้าทั้งหมดจากตาราง "ลูกค้า" จัดเรียงตามคอลัมน์ "ประเทศ" และ "ชื่อลูกค้า" ซึ่งหมายความว่าจะเรียงลำดับตามประเทศ แต่หากบางแถวมีประเทศเดียวกัน ก็จะเรียงลำดับตามชื่อลูกค้า
    SELECT * FROM Customers
    ORDER BY Country, CustomerName;

--// Using Both ASC and DESC
    -- เลือกลูกค้าทั้งหมดจากตาราง "ลูกค้า" เรียงลำดับจากน้อยไปมากตาม "ประเทศ" และจากมากไปน้อยตามคอลัมน์ "ชื่อลูกค้า":
    SELECT * FROM Customers
    ORDER BY Country ASC, CustomerName DESC;