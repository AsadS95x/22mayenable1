USE mayenable;

-- MAX and MIN Price
/*
SELECT MAX(product_cost) AS Most_Expensive_Item
From productdetails;

SELECT MIN(product_cost) AS Least_Expensive_Item
From productdetails;
*/

-- group orders by customer id
/*
Select order_id, customer_id, product_id
From orders
Order BY customer_id;
*/

-- Group only works for aggregrate functions
-- Shows number of people who bought that game
/*
Select count(customer_id), product_name
From orders t1
JOIN productdetails t2 ON t1.product_id=t2.product_id
Group by product_name 
*/


-- Nested Selects
/*   -- Version  1
SELECT product_name, product_cost)
FROM productdetails
WHERE product_id IN(
    SELECT product_id
    FROM orders
    WHERE customer_id=1
);
*/
		-- Version 2
        /*
SELECT product_name, product_cost -- SUM(product_cost) AS total
FROM productdetails
WHERE product_id IN(
    SELECT product_id
    FROM orders
    WHERE customer_id BETWEEN 1 AND 5
);*/

		-- Version 3
        /*
SELECT product_name, product_cost, SUM(product_cost) AS total
FROM productdetails
WHERE product_id IN(
    SELECT product_id
    FROM orders
    WHERE customer_id BETWEEN 1 AND 5
);
*/


-- Joins 
/*  -- Version 1
SELECT *
From orders t1
JOIN productdetails t2 ON t1.product_id=t2.product_id;
*/

 /*  -- Version 2
SELECT order_id, customer_id, orderdate, product_name, product_cost
From orders t1
JOIN productdetails t2 ON t1.product_id=t2.product_id;
*/

/*   -- Version 3
SELECT order_id, customer_id, orderdate, product_name, product_cost
From orders t1
JOIN productdetails t2 ON t1.product_id=t2.product_id
where product_name="GTA:V"
; 
*/

  -- Version 4
  /*
SELECT  orderdate, order_id, customer_id, t1.product_id, product_name, product_cost
From orders t1
JOIN productdetails t2 ON t1.product_id=t2.product_id
Where t1.product_id=1
order by customer_id
;
*/

   -- Version 5
/*
SELECT  orderdate, order_id, customer_id, t1.product_id, product_name, product_cost
From orders t1
Right outer JOIN productdetails t2 ON t1.product_id=t2.product_id
-- Where t1.product_id=1
order by customer_id
;  */

-- Saving the results of a Query, Create View
/*
CREATE VIEW query1
AS
Select order_id, customer_id, product_id
From orders
Order BY customer_id;

Select *
from query1;
*/

-- dropping a saved view table
/*
Drop VIEW query1;
*/