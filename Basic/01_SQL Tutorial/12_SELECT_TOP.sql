/*
    SELECT TOP
        ใช้เพื่อระบุจำนวนข้อมูลที่จะเลือก
        โครงสร้าง
        SQL Server / MS Access Syntax
            SELECT TOP number|percent column_name(s)
            FROM table_name
            WHERE condition;

        MySQL Syntax
            SELECT column_name(s)
            FROM table_name
            WHERE condition
            LIMIT number;

        Oracle 12 Syntax
            SELECT column_name(s)
            FROM table_name
            ORDER BY column_name(s)
            FETCH FIRST number ROWS ONLY;

        Older Oracle Syntax
            SELECT column_name(s)
            FROM table_name
            WHERE ROWNUM <= number;

        Older Oracle Syntax (with ORDER BY)
        SELECT *
        FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
        WHERE ROWNUM <= number;
*/

-- Example  เลือกเฉพาะ 3 ระเบียนแรกของตารางลูกค้า
    -- SQL Server / MS Access Syntax
    SELECT TOP 3 * FROM Customers;

    -- MySQL Syntax
    SELECT * FROM Customers LIMIT 3;

    -- Oracle 12 Syntax
    SELECT * FROM Customers
    FETCH FIRST 3 ROWS ONLY;

-- Example  เลือก 50% แรกของระเบียนจากตาราง "Customers"
    -- SQL Server / MS Access Syntax
    SELECT TOP 50 PERCENT * FROM Customers;

    -- Oracle 12 Syntax
    SELECT * FROM Customers
    FETCH FIRST 50 PERCENT ROWS ONLY;
