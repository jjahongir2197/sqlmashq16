CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    balance INT
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    type VARCHAR(20),
    amount INT,
    date DATE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

INSERT INTO accounts VALUES
(1, 'Ali', 1000),
(2, 'Vali', 2000);

INSERT INTO transactions VALUES
(1, 1, 'deposit', 500, '2024-01-01'),
(2, 1, 'withdraw', 200, '2024-01-02'),
(3, 2, 'deposit', 1000, '2024-01-03');
