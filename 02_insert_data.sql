-- Insert data into currency_type table
INSERT INTO currency_type VALUES (1, 'BGN');
INSERT INTO currency_type VALUES (2, 'INR');
INSERT INTO currency_type VALUES (3, 'TKL');
INSERT INTO currency_type VALUES (4, 'KLM');
INSERT INTO currency_type VALUES (5, 'EUR');
INSERT INTO currency_type VALUES (6, 'USD');
INSERT INTO currency_type VALUES (7, 'RUB');

-- Insert data into accounts table
INSERT INTO accounts VALUES (1, 420, 10.25, 30, 1);
INSERT INTO accounts VALUES (2, 421, 11.26, 31, 2);
INSERT INTO accounts VALUES (3, 422, 12.27, 32, 3);
INSERT INTO accounts VALUES (4, 423, 13.28, 33, 5);
INSERT INTO accounts VALUES (5, 423, 14.29, 34, 6);
INSERT INTO accounts VALUES (6, 424, 15.24, 35, 7);
INSERT INTO accounts VALUES (7, 426, 16.23, 36, 5);

-- Insert data into clients table
INSERT INTO clients VALUES (1, 'Yancho', '20621639' , 'Ul. Alexander Veliki', '0883040601', 1);
INSERT INTO clients VALUES (2, 'Kiril', '20621637', 'Ul. Aleko Veliki', '088344060', 2);
INSERT INTO clients VALUES (3, 'Georgi', '20621643', 'Ul. Lyuben Keliki', '088304064', 3);
INSERT INTO clients VALUES (4, 'Marko Polo', '20621354', 'Ul. Karamfil 32', '088355430', 5);
INSERT INTO clients VALUES (5, 'Marko Polo', '20621554', 'Ul. Georgi Sava', '023304430', 6);
INSERT INTO clients VALUES (6, 'Marvel', '20621454', 'Ul. Dunav 24', '088304435', 7);

-- Insert data into position_type table
INSERT INTO position_type VALUES (1, 'Customer Care Representative');
INSERT INTO position_type VALUES (2, 'Judge');
INSERT INTO position_type VALUES (3, 'Cook');
INSERT INTO position_type VALUES (4, 'Bartender');
INSERT INTO position_type VALUES (5, 'Barista');
INSERT INTO position_type VALUES (6, 'Waiter');

-- Insert data into employee table
INSERT INTO employee VALUES (1, 'Misho', '0884204200', 1);
INSERT INTO employee VALUES (2, 'Georgi', '0884204221', 2);
INSERT INTO employee VALUES (3, 'Stoyan', '08842042021', 3);
INSERT INTO employee VALUES (4, 'Grisho', '08842042043', 6);
INSERT INTO employee VALUES (5, 'Tisho', '08842042054', 5);
INSERT INTO employee VALUES (6, 'Pisho', '08842042065', 6);

-- Insert data into t_type table
INSERT INTO t_type VALUES (1, 'Deposit');
INSERT INTO t_type VALUES (2, 'Invest');
INSERT INTO t_type VALUES (3, 'Credit');
INSERT INTO t_type VALUES (4, 'Withdraw');
INSERT INTO t_type VALUES (5, 'Saving');
INSERT INTO t_type VALUES (6, 'Crypto');

-- Insert data into transactions table
INSERT INTO transactions VALUES (1, 301.27, '2001-08-08', 1, 1, 1, 1, 1);
INSERT INTO transactions VALUES (2, 302.26, '2002-08-08', 2, 2, 2, 2, 2);
INSERT INTO transactions VALUES (3, 303.25, '2003-08-08', 3, 3, 3, 3, 3);
INSERT INTO transactions VALUES (4, 304.24, '2004-08-08', 5, 4, 4, 4, 4);
INSERT INTO transactions VALUES (5, 305.23, '2005-08-08', 5, 5, 5, 5, 5);
INSERT INTO transactions VALUES (6, 306.22, '2006-08-08', 6, 4, 3, 6, 6);
