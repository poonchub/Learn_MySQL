/*
    SQL CREATE TABLE
        คำสั่ง CREATE TABLE ใช้เพื่อสร้างตารางใหม่ในฐานข้อมูล

    Syntax
        CREATE TABLE table_name (
        column1 datatype,
        column2 datatype,
        column3 datatype,
        ....
        );

    สร้างตารางโดยใช้ตารางอื่น
    Syntax
        CREATE TABLE new_table_name AS
        SELECT column1, column2,...
        FROM existing_table_name
        WHERE ....;
*/

--// Example 
    CREATE TABLE Persons (
        PersonID int,
        LastName varchar(255),
        FirstName varchar(255),
        Address varchar(255),
        City varchar(255)
    );

--// Example สร้างตารางโดยใช้ตารางอื่น
    CREATE TABLE TestTable AS
    SELECT customername, contactname
    FROM customers;