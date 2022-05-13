Create database if not exists mayenable;

Drop table if exists orders;
Drop table if exists customerdetails;
Drop table if exists productdetails;

CREATE TABLE customerdetails(
customer_id    INT AUTO_INCREMENT, 
customer_name   VARCHAR(30)      NOT NULL,
customer_email    VARCHAR(50)    UNIQUE,
customer_address    VARCHAR(50) NOT NULL,
postcode        VARCHAR(9) NOT NULL,
    Primary key (customer_id)
);

CREATE TABLE productdetails(
product_id INT AUTO_INCREMENT,  
product_name    VARCHAR(30)   Not null,
product_rating   VARCHAR(2)  Default("12"),
platform VARCHAR(10) Default("Playstation"),
genre VARCHAR(10),        
product_cost Decimal(10,2)  Not Null,
stockamount INT,
PRIMARY KEY (product_id)
);

CREATE TABLE orders(
order_id INT auto_increment, 
customer_id INT,
product_id INT,
product_amount INT,
orderdate DATETIME Default(""),
-- ordercost DECIMAL (10,2),
    Primary key (order_id),
    Foreign KEY (customer_id) REFERENCES customerdetails(customer_id),
    Foreign KEY (product_id) REFERENCES productdetails(product_id)
);