CREATE TABLE currency_type
(
    ct_id INTEGER NOT NULL,
    ct VARCHAR(32),
    CONSTRAINT currency_type_pk PRIMARY KEY (ct_id)
);

CREATE OR REPLACE TRIGGER ct_id_auto_tr 
BEFORE INSERT ON currency_type
FOR EACH ROW
WHEN(NEW.ct_id IS NULL)
BEGIN 
    :NEW.ct_id := ct_id_auto_s.NEXTVAL;
END;

CREATE TABLE accounts
(
    a_id INTEGER NOT NULL,
    a_number INTEGER,
    a_interest NUMBER(7,2),
    a_stock INTEGER,
    currency_type_ct_id INTEGER NOT NULL,
    CONSTRAINT accounts_pk PRIMARY KEY (a_id),
    CONSTRAINT accounts_currency_type_fk FOREIGN KEY (currency_type_ct_id) REFERENCES currency_type (ct_id)
);

CREATE OR REPLACE TRIGGER a_id_auto_tr 
BEFORE INSERT ON accounts
FOR EACH ROW
WHEN(NEW.a_id IS NULL)
BEGIN 
    :NEW.a_id := a_id_auto_s.NEXTVAL;
END;

CREATE TABLE clients
(
    c_id INTEGER NOT NULL,
    c_name VARCHAR(32),
    c_pin VARCHAR(32),
    c_address VARCHAR(32),
    c_phone_number VARCHAR(32),
    accounts_a_id INTEGER NOT NULL,
    CONSTRAINT clients_pk PRIMARY KEY (c_id),
    CONSTRAINT clients_accounts_fk FOREIGN KEY (accounts_a_id) REFERENCES accounts (a_id)
);

CREATE OR REPLACE TRIGGER c_id_auto_tr 
BEFORE INSERT ON clients
FOR EACH ROW
WHEN(NEW.c_id IS NULL)
BEGIN 
    :NEW.c_id := c_id_auto_s.NEXTVAL;
END;

CREATE TABLE position_type
(
    pt_id INTEGER NOT NULL,
    pt VARCHAR(32),
    CONSTRAINT position_pk PRIMARY KEY (pt_id)
);

CREATE OR REPLACE TRIGGER pt_id_auto_tr 
BEFORE INSERT ON position_type
FOR EACH ROW
WHEN(NEW.pt_id IS NULL)
BEGIN 
    :NEW.pt_id := pt_id_auto_s.NEXTVAL;
END;

CREATE TABLE employee
(
    e_id INTEGER NOT NULL,
    e_name VARCHAR(32),
    e_phone_number VARCHAR(32),
    position_type_pt_id INTEGER NOT NULL,
    CONSTRAINT employee_pk PRIMARY KEY (e_id),
    CONSTRAINT employee_position_type_fk FOREIGN KEY (position_type_pt_id) REFERENCES position_type (pt_id)
);

CREATE OR REPLACE TRIGGER e_id_auto_tr 
BEFORE INSERT ON employee
FOR EACH ROW
WHEN(NEW.e_id IS NULL)
BEGIN 
    :NEW.e_id := e_id_auto_s.NEXTVAL;
END;

CREATE TABLE t_type
(
    tt_id INTEGER NOT NULL,
    tt VARCHAR(32),
    CONSTRAINT t_type_pk PRIMARY KEY (tt_id)
);

CREATE OR REPLACE TRIGGER tt_id_auto_tr 
BEFORE INSERT ON t_type
FOR EACH ROW
WHEN(NEW.tt_id IS NULL)
BEGIN 
    :NEW.tt_id := tt_id_auto_s.NEXTVAL;
END;

CREATE TABLE transactions
(
    t_id INTEGER NOT NULL,
    t_total NUMBER(7,2),
    t_date VARCHAR(50),
    t_type_tt_id INTEGER NOT NULL,
    employee_e_id INTEGER NOT NULL,
    clients_c_id INTEGER NOT NULL,
    accounts_a_id INTEGER NOT NULL,
    currency_type_ct_id INTEGER NOT NULL,
    CONSTRAINT transactions_pk PRIMARY KEY (t_id),
    CONSTRAINT transactions_t_type_fk FOREIGN KEY (t_type_tt_id) REFERENCES t_type (tt_id),
    CONSTRAINT transactions_employee_fk FOREIGN KEY (employee_e_id) REFERENCES employee (e_id),
    CONSTRAINT transactions_clients_fk FOREIGN KEY (clients_c_id) REFERENCES clients (c_id),
    CONSTRAINT transactions_accounts_fk FOREIGN KEY (accounts_a_id) REFERENCES accounts (a_id),
    CONSTRAINT transactions_currency_type_fk FOREIGN KEY (currency_type_ct_id) REFERENCES currency_type (ct_id)
);

CREATE OR REPLACE TRIGGER t_id_auto_tr 
BEFORE INSERT ON transactions
FOR EACH ROW
WHEN(NEW.t_id IS NULL)
BEGIN 
    :NEW.t_id := t_id_auto_s.NEXTVAL;
END;
