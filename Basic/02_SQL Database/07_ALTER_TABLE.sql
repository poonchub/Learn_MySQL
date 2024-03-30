/*
    SQL ALTER TABLE
        คำสั่ง ALTER TABLE ใช้เพื่อเพิ่ม ลบ หรือแก้ไขคอลัมน์ในตารางที่มีอยู่ และยังใช้เพื่อเพิ่มและวางข้อจำกัดต่างๆ ในตารางที่มีอยู่

    // ALTER TABLE - ADD Column
        Syntax
            ALTER TABLE table_name
            ADD column_name datatype;

    // ALTER TABLE - DROP COLUMN
        Syntax
            ALTER TABLE table_name
            DROP COLUMN column_name;

    // ALTER TABLE - RENAME COLUMN
        Syntax
            ALTER TABLE table_name
            RENAME COLUMN old_name to new_name;

        Syntax SQL Server
            EXEC sp_rename 'table_name.old_name',  'new_name', 'COLUMN';

    // ALTER TABLE - ALTER/MODIFY DATATYPE
        Syntax SQL Server / MS Access
            ALTER TABLE table_name
            ALTER COLUMN column_name datatype;

        Syntax My SQL / Oracle (prior version 10G)
            ALTER TABLE table_name
            MODIFY COLUMN column_name datatype;

        Syntax Oracle 10G and later
            ALTER TABLE table_name
            MODIFY column_name datatype;
*/

--// Example ALTER TABLE - ADD Column
    ALTER TABLE Customers
    ADD Email varchar(255);

--// Example ALTER TABLE - DROP COLUMN
    ALTER TABLE Customers
    DROP COLUMN Email;

--// Example Change Data Type
    ALTER TABLE Persons
    ALTER COLUMN DateOfBirth year;