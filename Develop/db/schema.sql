-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE
USE ecommerce_db;

CREATE TABLE CATEGORY (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CATEGORY_NAME VARCHAR(50) NOT NULL
);

CREATE TABLE PRODUCT (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PRODUCT_NAME VARCHAR(50) NOT NULL,
    PRICE DECIMAL(10,2) NOT NULL,
    STOCK INT NOT NULL,
    CATEGORY_ID INT NOT NULL,
    FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(ID)
);

CREATE TABLE TAG (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    TAG_NAME VARCHAR(50) NOT NULL
);

CREATE TABLE PRODUCT_TAG (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PRODUCT_ID INT NOT NULL,
    TAG_ID INT NOT NULL,
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID),
    FOREIGN KEY (TAG_ID) REFERENCES TAG(ID)
);


