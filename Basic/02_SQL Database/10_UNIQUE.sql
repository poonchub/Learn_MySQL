/*
    ข้อจำกัด UNIQUE ช่วยให้มั่นใจได้ว่าค่าทั้งหมดในคอลัมน์จะแตกต่างกัน ทั้งข้อจำกัด UNIQUE และ PRIMARY KEY รับประกันความเป็นเอกลักษณ์ของคอลัมน์หรือชุดของคอลัมน์ ข้อจำกัดของคีย์หลักจะมีข้อจำกัด UNIQUE โดยอัตโนมัติ อย่างไรก็ตาม คุณสามารถมีข้อจำกัด UNIQUE ได้หลายรายการต่อตาราง แต่มีข้อจำกัด PRIMARY KEY เพียงรายการเดียวต่อตาราง
*/

--// Example สร้างข้อจำกัด UNIQUE ในคอลัมน์ "ID" เมื่อสร้างตาราง "Persons"
    -- SQL Server / Oracle / MS Access
    CREATE TABLE Persons (
        ID int NOT NULL UNIQUE,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int
    );

    -- MySQL
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        UNIQUE (ID)
    );

--// Example การตั้งชื่อข้อจำกัด UNIQUE และเพื่อกำหนดข้อจำกัด UNIQUE บนหลายคอลัมน์
    -- MySQL / SQL Server / Oracle / MS Access
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        CONSTRAINT UC_Person UNIQUE (ID,LastName)
    );

--// Example หากต้องการสร้างข้อจำกัด UNIQUE ในคอลัมน์ "ID" เมื่อสร้างตารางแล้ว
    -- MySQL / SQL Server / Oracle / MS Access
    ALTER TABLE Persons
    ADD UNIQUE (ID);

--// Example การตั้งชื่อข้อจำกัด UNIQUE และเพื่อกำหนดข้อจำกัด UNIQUE บนหลายคอลัมน์
    -- MySQL / SQL Server / Oracle / MS Access
    ALTER TABLE Persons
    ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

--// Example หากต้องการยกเลิกข้อจำกัด UNIQUE ให้ใช้ SQL ต่อไปนี้
    -- MySQL
    ALTER TABLE Persons
    DROP INDEX UC_Person;

    -- SQL Server / Oracle / MS Access:
    ALTER TABLE Persons
    DROP CONSTRAINT UC_Person;