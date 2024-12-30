CREATE DATABASE StockData;
USE StockData;
CREATE TABLE Stocks (
    Date DATE,
    Open FLOAT,
    High FLOAT,
    Low FLOAT,
    Close FLOAT,
    Adj_Close FLOAT,
    Volume INT,
    Stock VARCHAR(10)
);
ALTER TABLE Stocks
RENAME COLUMN `Adj_Close` TO `Adj Close`;
DESCRIBE Stocks;
SELECT COUNT(*) FROM Stocks;
SELECT * FROM Stocks LIMIT 10;
CREATE USER 'root'@'host' IDENTIFIED WITH mysql_native_password BY '';
GRANT ALL PRIVILEGES ON StockData.* TO 'root'@'host';
FLUSH PRIVILEGES;