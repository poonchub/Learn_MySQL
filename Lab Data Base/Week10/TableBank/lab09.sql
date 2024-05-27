CREATE VIEW loan_view AS
	SELECT branch_name, SUM(amount) FROM loan
    GROUP BY branch_name
    HAVING SUM(amount) > 3000;
SELECT * FROM loan_view;

-- ----------------------------------------------------------------------------

CREATE VIEW join_view AS
	SELECT
		a.account_number, a.branch_name, a.balance, c.customer_name
	FROM
		account a INNER JOIN depositor d INNER JOIN customer c
	ON
		a.account_number = d.account_number
	AND d.customer_name = c.customer_name
    WHERE branch_name = 'SUT';
SELECT * FROM join_view;
DROP VIEW join_view;

-- ----------------------------------------------------------------------------

CREATE VIEW account_view AS
	SELECT * FROM account
    WHERE balance < 200
WITH CHECK OPTION;
SELECT * FROM account_view;

-- ----------------------------------------------------------------------------

INSERT INTO account_view VALUES(4, 'SUT', 500);

-- ----------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE transfer_money(
	IN amount_transfer FLOAT,
	IN from_acc_num INT,
	IN to_acc_num INT
)
BEGIN
	DECLARE errorStatus BOOLEAN DEFAULT FALSE;

	START TRANSACTION;
		BEGIN
			DECLARE EXIT HANDLER FOR SQLEXCEPTION SET errorStatus = TRUE;
            UPDATE accounts 
			SET balance = balance - amount_transfer 
			WHERE account_number = from_acc_num;

			UPDATE accounts 
			SET balance = balance + amount_transfer 
			WHERE account_number = to_acc_num;
		END;

	IF errorStatus = TRUE THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
END $$
CALL transfer_money(10, 1, 3);
CALL transfer_money(10, 1, 8);

-- ----------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE loan_money(
	IN loan_number INT,
    IN b_name CHAR(9),
	IN amount FLOAT,
	IN customer_name CHAR(9),
	IN acc_number INT
)
BEGIN
	DECLARE errorStatus BOOLEAN DEFAULT FALSE;

	START TRANSACTION;
		BEGIN
			DECLARE EXIT HANDLER FOR SQLEXCEPTION SET errorStatus = TRUE; ROLLBACK;
            
            INSERT INTO loan(loan_number, branch_name, amount)
            VALUES (loan_number, b_name, amount);
            
            INSERT INTO borrower(customer_name, loan_number)
            VALUES (customer_name, loan_number);
            
            UPDATE branch 
            SET asset = asset - amount
            WHERE branch_name = b_name;
            
            UPDATE account 
            SET balance = balance + amount
            WHERE account_number = acc_number;
		END;

	IF errorStatus = TRUE THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
END $$
CALL loan_money(103,'SUT',20000,'Som',1);
CALL loan_money(104,'SUT',20000,'Som',5);

DELIMITER $$

CREATE PROCEDURE loan_money (
    IN loan_number INT,
    IN b_name CHAR(9),
    IN amount FLOAT,
    IN customer_name CHAR(9),
    IN acc_number INT
)
BEGIN
    DECLARE errorStatus BOOLEAN DEFAULT FALSE;

    START TRANSACTION;

    BEGIN
        DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN
            SET errorStatus = TRUE;
            ROLLBACK;
        END;

        -- Insert into the loan table
        INSERT INTO loan (loan_number, branch_name, amount)
        VALUES (loan_number, b_name, amount);

        -- Insert into the borrower table
        INSERT INTO borrower (customer_name, loan_number)
        VALUES (customer_name, loan_number);

        -- Update the branch's asset value
        UPDATE branch
        SET assets = assets - amount
        WHERE branch_name = b_name;

        -- Update the account balance
        UPDATE account
        SET balance = balance + amount
        WHERE account_number = acc_number;
    END;

    IF errorStatus THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END$$

DELIMITER ;
