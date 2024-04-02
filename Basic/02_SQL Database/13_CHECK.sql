/*
    SQL CHECK Constraint
        CHECK ใช้เพื่อจำกัดช่วงค่าที่สามารถวางในคอลัมน์ได้ หากคุณกำหนดข้อจำกัด CHECK ในคอลัมน์ จะอนุญาตเฉพาะค่าบางค่าสำหรับคอลัมน์นี้ หากคุณกำหนดข้อจำกัด CHECK ในตาราง จะสามารถจำกัดค่าในบางคอลัมน์โดยยึดตามค่าในคอลัมน์อื่นๆ ในแถว
*/

--// Example สร้างข้อจำกัดในการตรวจสอบในคอลัมน์ "อายุ" เมื่อสร้างตาราง "บุคคล" ข้อจำกัด CHECK ทำให้แน่ใจว่าอายุของบุคคลจะต้องมีอายุ 18 ปีขึ้นไป
    -- MySQL
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        CHECK (Age>=18)
    );

    -- SQL Server / Oracle / MS Access
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int CHECK (Age>=18)
    );

--// Example หากต้องการอนุญาตการตั้งชื่อข้อจำกัด CHECK และสำหรับการกำหนดข้อจำกัด CHECK บนหลายคอลัมน์
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        City varchar(255),
        CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
    );

--// Example เมื่อต้องการสร้างข้อจำกัดการตรวจสอบในคอลัมน์ "อายุ"
    ALTER TABLE Persons
    ADD CHECK (Age>=18);

--// Example หากต้องการอนุญาตการตั้งชื่อข้อจำกัด CHECK และสำหรับการกำหนดข้อจำกัด CHECK บนหลายคอลัมน์
    ALTER TABLE Persons
    ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');

--// Example หากลบข้อจำกัด CHECK
    -- SQL Server / Oracle / MS Access
    ALTER TABLE Persons
    DROP CONSTRAINT CHK_PersonAge;

    -- MySQL
    ALTER TABLE Persons
    DROP CHECK CHK_PersonAge;