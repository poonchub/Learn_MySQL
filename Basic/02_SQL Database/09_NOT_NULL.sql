--// Example คอลัมน์ "ID", "LastName" และ "FirstName" จะไม่ยอมรับค่า NULL เมื่อสร้างตาราง "Persons"
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255) NOT NULL,
        Age int
    );

--// Example ต้องการสร้างข้อจำกัด NOT NULL ในคอลัมน์ "อายุ" เมื่อสร้างตาราง "บุคคล" แล้ว ให้ใช้ SQL ต่อไปนี้
    -- SQL Server / MS Access
    ALTER TABLE Persons
    ALTER COLUMN Age int NOT NULL;

    -- My SQL / Oracle (prior version 10G)
    ALTER TABLE Persons
    MODIFY COLUMN Age int NOT NULL;

    -- Oracle 10G and later
    ALTER TABLE Persons
    MODIFY Age int NOT NULL;