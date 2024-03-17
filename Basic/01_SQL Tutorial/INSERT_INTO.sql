/*
    INSERT INTO
        แทรกข้อมูลใหม่ลงในฐานข้อมูล
        โครงสร้าง 1 ระบุทั้งชื่อคอลัมน์และค่าที่จะแทรก
            INSERT INTO table_name (column1, column2, column3, ...)
            VALUES (value1, value2, value3, ...);

        โครงสร้าง 2 แทรกค่าในทุกคอลัมน์
            INSERT INTO table_name
            VALUES (value1, value2, value3, ...);
*/

-- Example  แทรกค่าในทุกคอลัมน์
    INSERT INTO Customers
    VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- Example  แทรกข้อมูลเฉพาะในคอลัมน์ที่ระบุ
    INSERT INTO Customers (CustomerName, City, Country)
    VALUES ('Cardinal', 'Stavanger', 'Norway');

-- Example  แทรกข้อมูลหลายแถว
    INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES
    ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
    ('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
    ('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');
