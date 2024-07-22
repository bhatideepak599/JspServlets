CREATE DATABASE bank;

USE bank;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    accountNumber VARCHAR(255) NOT NULL,
    balance DOUBLE NOT NULL
);

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    senderAccNo VARCHAR(255) NOT NULL,
    receiverAccNo VARCHAR(255) NOT NULL,
    type VARCHAR(255) DEFAULT "transfer",
    amount DOUBLE NOT NULL,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Rbalance double,
    Sbalance double
);