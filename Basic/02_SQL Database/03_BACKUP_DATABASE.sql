/*
    SQL BACKUP DATABASE
        คำสั่ง BACKUP DATABASE ใช้ใน SQL Server เพื่อสร้างการสำรองข้อมูลเต็มรูปแบบของฐานข้อมูล SQL ที่มีอยู่

    Syntax
        BACKUP DATABASE databasename
        TO DISK = 'filepath';

    การสำรองข้อมูลส่วนต่างจะสำรองเฉพาะส่วนของฐานข้อมูลที่เปลี่ยนแปลงตั้งแต่การสำรองฐานข้อมูลเต็มรูปแบบครั้งล่าสุด

    Syntax
        BACKUP DATABASE databasename
        TO DISK = 'filepath'
        WITH DIFFERENTIAL;
*/

--// Example สร้างการสำรองข้อมูลเต็มรูปแบบของฐานข้อมูลที่มีอยู่ "testDB" ไปยังดิสก์ D
    BACKUP DATABASE testDB
    TO DISK = 'D:\backups\testDB.bak';

--// Example สร้างการสำรองข้อมูลส่วนต่างของฐานข้อมูล "testDB"
    BACKUP DATABASE testDB
    TO DISK = 'D:\backups\testDB.bak'
    WITH DIFFERENTIAL;