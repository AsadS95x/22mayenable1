USe	mayenable;

-- Data Entry

Insert into customerdetails (customer_name, customer_email, customer_address, postcode)
Values 
("Asad", "yermaw@live.co.uk", "Glesga","G12 9P"),
("Barnie", "idk@live.co.uk", "Fictional Lands"," L3 6GT"),
("Thomas Shelby", "york@live.co.uk", "york","Y16 2MW"),
("MJ", "Mudge@live.co.uk", "Gleswega", "G49 XT");

Insert into productdetails (product_name, product_rating, platform, genre, product_cost, stockamount)
Values ("GTA:V", 18, "All", "RPG", 15.99, 47),
 ("Black Flag", 18, "All", "RPG", 59.99, 15),
 ("Ratchet & Clank", "3+", "PS", "Platformer", 39.99, 8),
 ("Horizon:Foribiden West", 16, "PS", "RPG", 59.99, 29);
 
  
 Insert into orders (customer_id, product_id, product_amount, orderdate)
Values (4, 2, 1, now()),
(1, 2, 1, now()),
(3, 1, 2, now()),
(2, 3, 1, now()),
(1, 4, 1, now()),
(Null, 3, Null, Now()),
(4, 3, 1, now()),
(1, 1, 1, now())
 ;

 
 -- showing all of customer details
/*
SELECT 
    *
FROM
    customerdetails; 
*/

-- show all of product details
/*
SELECT 
    *
FROM
    productdetails; 
*/
 
 -- show all orders
 /*
 SELECT 
    *
FROM
    orders; 
    */
    
-- updating a customers details    
/*
Update customerdetails
SET customer_email="basket@live.co.uk"
WHERE customer_id=4	;
*/

-- deleting a product
/*
Delete FROM productdetails
where product_id=1;
*/



-- only show, given fields from product details
/*
SELECT 
    product_name, product_rating, genre
FROM
    productdetails; 
*/ 

-- show all rows, where customer name is "MJ"
/*
    SELECT 
    *
FROM
    customerdetails
WHERE
    customer_name = 'MJ';
 */
 
-- show name and postcode for customer_id 2
/*
SELECT 
    CUSTOMER_NAME, postcode
FROM
    customerdetails
WHERE
    customer_id = 2;
*/

