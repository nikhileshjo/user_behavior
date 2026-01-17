-- create schema

CREATE DATABASE retailer;

\c retailer

CREATE TABLE user_purchase (
  invoice_number VARCHAR(10),
  stock_code VARCHAR(50),
  detail VARCHAR(100),
  quantity INT,
  invoice_date TIMESTAMP,
  unit_price NUMERIC,
  customer_id INT,
  country VARCHAR(100)
);


-- import data

COPY user_purchase FROM '/init_data/OnlineRetail.csv' WITH (FORMAT csv, HEADER true);