/*
    ข้อจำกัดของคีย์หลักจะระบุแต่ละระเบียนในตารางโดยไม่ซ้ำกัน คีย์หลักต้องมีค่า UNIQUE และต้องไม่มีค่า NULL ตารางสามารถมีคีย์หลักได้เพียงคีย์เดียวเท่านั้น และในตาราง คีย์หลักนี้สามารถประกอบด้วยคอลัมน์เดียวหรือหลายคอลัมน์ (ช่อง)
*/

--// Example สร้างคีย์หลักในคอลัมน์ "ID" เมื่อสร้างตาราง "บุคคล"
    -- MySQL
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        PRIMARY KEY (ID)
    );

    -- SQL Server / Oracle / MS Access
    CREATE TABLE Persons (
        ID int NOT NULL PRIMARY KEY,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int
    );

--// Example การตั้งชื่อของคีย์หลักและการกำหนดคีย์หลักบนหลายคอลัมน์
    -- MySQL / SQL Server / Oracle / MS Access
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
    );

--// Example การสร้างข้อจำกัดคีย์หลักในคอลัมน์ "ID" เมื่อสร้างตารางแล้ว
    -- MySQL / SQL Server / Oracle / MS Access
    ALTER TABLE Persons
    ADD PRIMARY KEY (ID);

--// Example การตั้งชื่อของคีย์หลักและการกำหนดคีย์หลักบนหลายคอลัมน์
    -- MySQL / SQL Server / Oracle / MS Access
    ALTER TABLE Persons
    ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

--// Example การลบคีย์หลัก
    -- MySQL
    ALTER TABLE Persons
    DROP PRIMARY KEY;
    
    -- SQL Server / Oracle / MS Access:
    ALTER TABLE Persons
    DROP CONSTRAINT PK_Person;