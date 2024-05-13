-- 7.1 
DELIMITER $$
CREATE PROCEDURE getAccountCustomer()
BEGIN
 SELECT * FROM account, depositor, customer;
END $$
CALL getAccountCustomer();
-- DROP PROCEDURE getAccountCustomer;

DELIMITER $$
CREATE PROCEDURE getTotalAsset()
BEGIN
 DECLARE totalAsset INT DEFAULT 0;

 SELECT SUM(Asset)
 INTO totalAsset
 FROM branch;

 SELECT totalAsset;
END $$
CALL getTotalAsset();
-- DROP PROCEDURE getTotalAsset

DELIMITER $$
 CREATE PROCEDURE getAssetAvgBalance(
 IN b_name VARCHAR(20),
 OUT b_asset float,
 OUT avg_a_balance float
)
BEGIN
 SELECT asset INTO b_asset
 FROM branch
 WHERE branch_name = b_name;
 
 SELECT balance INTO avg_a_balance
 FROM account
 WHERE branch_name = b_name;
END $$
CALL getAssetAvgBalance('Mall', @b_asset, @avg_a_balance);
SELECT @b_asset, @avg_a_balance;
-- DROP PROCEDURE getAssetAvgBalance;

DELIMITER $$
CREATE PROCEDURE checkAccountStatus(
	IN a_number INT,
	OUT a_status VARCHAR(20)
)
BEGIN
	DECLARE a_balance FLOAT DEFAULT 0;
    DECLARE a_loan FLOAT DEFAULT 0;
    
	SELECT balance
	INTO a_balance
	FROM account
	WHERE account_number = a_number;
	
    SELECT amount
    INTO a_loan
    from loan
    WHERE branch_name = (
    SELECT branch_name from account
    WHERE account_number = a_number);
    
	IF a_balance > a_loan THEN
		SET a_status = 'OK';
	ELSEIF a_balance = a_loan THEN
		SET a_status = 'Warning';
	ELSE 
		SET a_status = 'Critical';
	END IF;
END $$
SET @a_number = 3;
CALL checkAccountStatus(@a_number, @a_status);
SELECT @a_number, @a_status;
-- DROP PROCEDURE checkAccountStatus;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE InsertAccountCustomer(
	IN a_number INT,
    IN b_name char(9),
    IN balance float,
    IN c_name char(9),
    IN c_street varchar(20),
    IN c_city varchar(20)
)
BEGIN
	DECLARE EXIT HANDLER FOR 1062
    BEGIN
		SELECT CONCAT('Duplicate key (',a_number,') occurred') AS message;
	END;
    
	INSERT INTO Account VALUES (a_number, b_name, balance);
	INSERT INTO Depositor VALUES (c_name, a_number);
	INSERT INTO  Customer VALUES (c_name, c_street, c_city);
    
END $$
CALL InsertAccountCustomer(3, 'SUT', 300, 'Nun', 'Univercity', 'Korat');
-- DROP PROCEDURE InsertAccountCustomer

-- 7.2
DELIMITER $$
CREATE FUNCTION GenAccountNumbe(
	a_number INT
) 
	RETURNS INT
	DETERMINISTIC
BEGIN
	DECLARE new_a_number INT;
	SET new_a_number = a_number + 100;
	RETURN (new_a_number);
END $$
INSERT INTO account VALUES (GenAccountNumbe(4),'SUT', 3000);
SELECT * FROM account;
DELETE FROM account WHERE account_number = GenAccountNumbe(4);

DELIMITER $$
CREATE FUNCTION BranchNameToID(
	b_name CHAR(9)
) 	RETURNS CHAR(9) CHARSET utf8
	DETERMINISTIC
BEGIN
	DECLARE new_id CHAR(9);
	IF b_name = 'SUT' THEN
		SET new_id = '0001';
	END IF;
    IF b_name = 'Mall' THEN
		SET new_id = '0002';
	END IF;
	RETURN (new_id);
END $$
SELECT 
	BranchNameToID(branch_name),
    branch_name,
    branch_city,
    asset
FROM branch order by BranchNameToID(branch_name);
DROP FUNCTION BranchNameToID;
	