create database kbms_p1;

use kbms_p1;

CREATE TABLE PRODUCT
(
	PRODUCT_ID int primary key ,
   PRODUCT_NAME TEXT NOT NULL,
   PRODUCT_COUNT INT,
   TOTAL_STOCK INT NOT NULL,
   BEST_BEFORE DATE,
   PRICE_PER_UNIT DOUBLE NOT NULL,
   
TYPE_OF_PRODUCT VARCHAR(10)

) auto_increment=10001;

drop table order1;

CREATE TABLE `ORDER1` (
   `order_id` int NOT NULL AUTO_INCREMENT,
   `customer_name` varchar(20) NOT NULL,
   `customer_contact` varchar(10) DEFAULT NULL,
   `delivery_address` varchar(255) NOT NULL,
   `totalprice` int NOT NULL,
   PRIMARY KEY (`order_id`)
 );
 ALTER TABLE order1
modify email varchar(50); 
 
DROP TABLE IF EXISTS ORDERED_ITEM;
CREATE TABLE ORDER_PRODUCT (
   order_id int NOT NULL,
   product_name varchar(255) DEFAULT NULL,
   price_per_unit smallint unsigned NOT NULL,
   FOREIGN KEY (`order_id`) REFERENCES `order1` (`order_id`)
 );
 
 
 CREATE TABLE USER(
Customer_name varchar(50), 
email VARCHAR(50), 
phone VARCHAR(20),
address TEXT, 
date_of_birth varchar(30), 
age INT,
password varchar(15),
identity_proof varchar(25),
login_id varchar(50) primary key

);