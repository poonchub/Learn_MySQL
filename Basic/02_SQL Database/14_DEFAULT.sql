/*
    SQL DEFAULT Constraint
        DEFAULT ใช้เพื่อตั้งค่าเริ่มต้นสำหรับคอลัมน์ ค่าเริ่มต้นจะถูกเพิ่มลงในบันทึกใหม่ทั้งหมด หากไม่มีการระบุค่าอื่น
*/

--// Example ตั้งค่า DEFAULT สำหรับคอลัมน์ "City" เมื่อสร้างตาราง "Persons"
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        City varchar(255) DEFAULT 'Sandnes'
    );

--// Example ข้อจำกัด DEFAULT ยังสามารถใช้เพื่อแทรกค่ากำหนดของระบบได้ โดยใช้ฟังก์ชันเช่น GETDATE()
    CREATE TABLE Orders (
        ID int NOT NULL,
        OrderNumber int NOT NULL,
        OrderDate date DEFAULT GETDATE()
    );

--// Example เมื่อต้องการสร้างข้อจำกัดเริ่มต้นในคอลัมน์ "เมือง" เมื่อสร้างตารางแล้ว
    -- MySQL
    ALTER TABLE Persons
    ALTER City SET DEFAULT 'Sandnes';

    -- SQL Server
    ALTER TABLE Persons
    ADD CONSTRAINT df_City
    DEFAULT 'Sandnes' FOR City;

    -- MS Access
    ALTER TABLE Persons
    ALTER COLUMN City SET DEFAULT 'Sandnes';

    -- Oracle
    ALTER TABLE Persons
    MODIFY City DEFAULT 'Sandnes';

--// Example เมื่อต้องการลบข้อจำกัด DEFAULT
    -- MySQL
    ALTER TABLE Persons
    ALTER City DROP DEFAULT;

    -- SQL Server / Oracle / MS Access
    ALTER TABLE Persons
    ALTER COLUMN City DROP DEFAULT;

    -- SQL Server
    ALTER TABLE Persons
    ALTER COLUMN City DROP DEFAULT;