/*
    SQL FOREIGN KEY Constraint
        FOREIGN KEY ใช้เพื่อป้องกันการกระทำที่จะทำลายการเชื่อมโยงระหว่างตาราง FOREIGN KEY คือเขตข้อมูล (หรือชุดของเขตข้อมูล) ในตารางหนึ่งที่อ้างอิงถึงคีย์หลักในอีกตารางหนึ่ง ตารางที่มีคีย์นอกเรียกว่าตารางลูก และตารางที่มีคีย์หลักเรียกว่าตารางอ้างอิงหรือตารางหลัก
*/

--// Example สร้าง FOREIGN KEY ในคอลัมน์ "PersonID" เมื่อสร้างตาราง "Orders"
    -- MySQL
    CREATE TABLE Orders (
        OrderID int NOT NULL,
        OrderNumber int NOT NULL,
        PersonID int,
        PRIMARY KEY (OrderID),
        FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
    );
    
    -- SQL Server / Oracle / MS Access
    CREATE TABLE Orders (
        OrderID int NOT NULL PRIMARY KEY,
        OrderNumber int NOT NULL,
        PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
    );

--// Example หากต้องการอนุญาตการตั้งชื่อข้อจำกัด FOREIGN KEY และสำหรับการกำหนดข้อจำกัด FOREIGN KEY บนหลายคอลัมน์
    CREATE TABLE Orders (
        OrderID int NOT NULL,
        OrderNumber int NOT NULL,
        PersonID int,
        PRIMARY KEY (OrderID),
        CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
        REFERENCES Persons(PersonID)
    );

--// Example สร้างข้อจำกัดคีย์ต่างประเทศในคอลัมน์ "PersonID" เมื่อสร้างตาราง "คำสั่งซื้อ" แล้ว
    ALTER TABLE Orders
    ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

--// Example หากต้องการอนุญาตการตั้งชื่อข้อจำกัด FOREIGN KEY และสำหรับการกำหนดข้อจำกัด FOREIGN KEY บนหลายคอลัมน์
    ALTER TABLE Orders
    ADD CONSTRAINT FK_PersonOrder
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

--// Example หากต้องการลบ FOREIGN KEY
    -- MySQL
    ALTER TABLE Orders
    DROP FOREIGN KEY FK_PersonOrder;

    -- SQL Server / Oracle / MS Access
    ALTER TABLE Orders
    DROP CONSTRAINT FK_PersonOrder;