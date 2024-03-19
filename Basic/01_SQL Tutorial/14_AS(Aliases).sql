/*
    AS (Aliases)
        ใช้เพื่อตั้งชื่อตารางหรือคอลัมน์ในตารางเป็นชื่อชั่วคราว Aliases มักใช้เพื่อทำให้ชื่อคอลัมน์อ่านง่ายขึ้น Aliases จะมีอยู่ในช่วงเวลาของการสืบค้นนั้นเท่านั้น Aliases ถูกสร้างขึ้นด้วยคำสำคัญ AS
    
    โครงสร้าง 
        // ใช้กับ column
        SELECT column_name AS alias_name
        FROM table_name;

        // ใช้กับ table
        SELECT column_name(s)
        FROM table_name AS alias_name;
*/

--// AS
    SELECT CustomerID AS ID
    FROM Customers;

--// AS is Optional
    -- จริงๆ แล้ว ในภาษาฐานข้อมูลส่วนใหญ่ คุณสามารถข้ามคีย์เวิร์ด AS และรับผลลัพธ์เดียวกันได้
    SELECT CustomerID ID
    FROM Customers;

--// Alias for Columns
    -- สร้าง Aliases สองรายการ หนึ่งรายการสำหรับคอลัมน์ CustomerID และอีกรายการหนึ่งสำหรับคอลัมน์ CustomerName
    SELECT CustomerID AS ID, CustomerName AS Customer
    FROM Customers;

--// Using Aliases With a Space Character
    -- การใช้ [วงเล็บเหลี่ยม] สำหรับนามแฝงที่มีอักขระเว้นวรรค
    SELECT ProductName AS [My Great Products]
    FROM Products;

    -- การใช้ "เครื่องหมายคำพูดคู่" สำหรับนามแฝงที่มีอักขระเว้นวรรค
    SELECT ProductName AS "My Great Products"
    FROM Products;

--// Concatenate Columns
    -- สร้าง Aliases ชื่อ "Address" ที่รวมสี่คอลัมน์ (ที่อยู่, รหัสไปรษณีย์, เมืองและประเทศ)
    SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
    FROM Customers;

    -- หากต้องการรับคำสั่ง SQL ด้านบนให้ทำงานใน MySQL ให้ใช้ดังต่อไปนี้
    SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
    FROM Customers;

    -- หากต้องการรับคำสั่ง SQL ด้านบนให้ทำงานใน Oracle ให้ใช้สิ่งต่อไปนี้
    SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
    FROM Customers;

--// Alias for Tables
    -- อ้างถึงตาราง Customers เป็น Persons แทน
    SELECT * FROM Customers AS Persons;

    -- เลือกคำสั่งซื้อทั้งหมดจากลูกค้าที่มี CustomerID=4 (Around the Horn) เราใช้ตาราง "Customers" และ "Orders" และตั้งชื่อแทนตารางเป็น "c" และ "o" ตามลำดับ (ในที่นี้เราใช้ Alias เพื่อทำให้ SQL สั้นลง)
    SELECT o.OrderID, o.OrderDate, c.CustomerName
    FROM Customers AS c, Orders AS o
    WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

    -- คำสั่ง SQL ต่อไปนี้เหมือนกับข้างบน แต่ไม่มี Alias
    SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
    FROM Customers, Orders
    WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;