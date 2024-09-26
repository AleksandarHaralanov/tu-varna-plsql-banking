-- Update and delete for currency_type table
UPDATE currency_type
SET ct = 'SLD'
WHERE ct_id = 4;

DELETE FROM currency_type
WHERE ct_id = 4;

-- Update and delete for accounts table
UPDATE accounts
SET a_number = 425
WHERE a_id = 5;

DELETE FROM accounts
WHERE a_id = 4;

-- Update and delete for clients table
UPDATE clients
SET c_name = 'Miril'
WHERE c_id = 2;

DELETE FROM clients
WHERE c_id = 6;

-- Update and delete for position_type table
UPDATE position_type
SET pt = 'Librarian'
WHERE pt_id = 3;

DELETE FROM position_type
WHERE pt_id = 4;

-- Update and delete for employee table
UPDATE employee
SET e_name = 'Michael'
WHERE e_id = 1;

DELETE FROM employee
WHERE e_id = 6;

-- Update and delete for t_type table
UPDATE t_type 
SET tt = 'Withdraw'
WHERE tt_id = 4;

