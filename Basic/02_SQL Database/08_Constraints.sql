/*
    SQL Constraints
        ใช้เพื่อระบุกฎสำหรับข้อมูลในตาราง
        ระบุได้เมื่อสร้างตารางด้วยคำสั่ง CREATE TABLE หรือหลังจากสร้างตารางด้วยคำสั่ง ALTER TABLE
    Syntax
        CREATE TABLE table_name (
            column1 datatype constraint,
            column2 datatype constraint,
            column3 datatype constraint,
            ....
        );

    Constraints used in SQL
        NOT NULL        คอลัมน์ไม่สามารถมีค่า NULL 
        UNIQUE          ค่าทั้งหมดในคอลัมน์แตกต่างกัน 
        PRIMARY KEY     ระบุแต่ละแถวในตารางโดยไม่ซ้ำกัน 
        FOREIGN KEY     ป้องกันการกระทำที่จะทำลายการเชื่อมโยงระหว่างตาราง 
        CHECK           ค่าในคอลัมน์ตรงตามเงื่อนไขที่กำหนด
        DEFAULT         ตั้งค่าเริ่มต้นสำหรับคอลัมน์
        CREATE INDEX    ใช้เพื่อสร้างและดึงข้อมูลจากฐานข้อมูลอย่างรวดเร็ว
*/