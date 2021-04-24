-- Customer 

CREATE TABLE Customer (
    customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
     customer_Name VARCHAR2(20) CONSTRAINT name_notNull NOT NULL,
     customer_Tel NUMBER
);

-- Product 

CREATE TABLE Product (
    product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
    product_Name VARCHAR2(20) CONSTRAINT name_notNull NOT NULL,
    product_price NUMBER CONSTRAINT positive_price CHECK (product_price > 0)
);
-- Order

CREATE TABLE Orders (
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id)  REFERENCES Product(product_id)
)

-- Add a column Category to Product Table

ALTER TABLE Product ADD category VARCHAR2(20);

-- Add a column OrderDate to ORDERS Table

ALTER TABLE Orders ADD OrderDate DATE CONSTRAINT defaul_date DEFAULT SYSDATE;