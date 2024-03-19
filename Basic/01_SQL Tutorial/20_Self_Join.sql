/*
    SQL Self Join
        การรวมด้วยตนเองเป็นการเ join ปกติ แต่ตารางจะถูกรวมเข้ากับตัวมันเอง

    Syntax
        SELECT column_name(s)
        FROM table1 T1, table1 T2
        WHERE condition;
*/

--// Example
    SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
    FROM Customers A, Customers B
    WHERE A.CustomerID <> B.CustomerID
    AND A.City = B.City
    ORDER BY A.City;

** Link => https://www.w3schools.com/sql/sql_join_self.asp