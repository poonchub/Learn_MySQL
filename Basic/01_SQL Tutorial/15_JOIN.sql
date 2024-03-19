/*
    JOIN
        ใช้เพื่อรวมแถวจากสองตารางขึ้นไป โดยยึดตามคอลัมน์ที่เกี่ยวข้องกันระหว่างตารางเหล่านั้น

    different types of the JOINs in SQL
        (INNER) JOIN
            ส่งกลับระเบียนที่มีค่าที่ตรงกันในทั้งสองตาราง

        LEFT (OUTER) JOIN   
            ส่งกลับระเบียนทั้งหมดจากตารางด้านซ้าย และระเบียนที่ตรงกันจากตารางด้านขวา

        RIGHT (OUTER) JOIN
            ส่งกลับระเบียนทั้งหมดจากตารางด้านขวา และระเบียนที่ตรงกันจากตารางด้านซ้าย

        FULL (OUTER) JOIN
            ส่งกลับระเบียนทั้งหมดเมื่อมีข้อมูลที่ตรงกันในตารางด้านซ้ายหรือด้านขวา
*/

/*
    "Orders" table
    OrderID	CustomerID	OrderDate
    10308	    2	    1996-09-18
    10309	    37	    1996-09-19
    10310	    77	    1996-09-20

    "Customers" table   
    CustomerID	CustomerName	            ContactName	    Country
    1	        Alfreds Futterkiste	        Maria Anders	Germany
    2	        Ana Trujillo Emparedados	Ana Trujillo	Mexico
    3	        Antonio Moreno Taquería	    Antonio Moreno	Mexico

    สังเกตว่าคอลัมน์ "CustomerID" ในตาราง "Orders" อ้างอิงถึง "CustomerID" ในตาราง "Customers" ความสัมพันธ์ระหว่างสองตารางด้านบนคือคอลัมน์ "Customers"
*/

-- สามารถสร้างคำสั่ง SQL ต่อไปนี้ (ที่มี INNER JOIN) ที่เลือกระเบียนที่มีค่าที่ตรงกันในทั้งสองตาราง
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

/*
    Result
    OrderID	CustomerName	            OrderDate
    10308	Ana Trujillo Emparedados	9/18/1996
    10365	Antonio Moreno Taquería	    11/27/1996
    10383	Around the Horn	            12/16/1996
    10355	Around the Horn	            11/15/1996
    10278	Berglunds snabbköp	        8/12/1996
*/