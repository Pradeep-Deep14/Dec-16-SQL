CREATE TABLE customers (
         customer_id INT PRIMARY KEY, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE orders (
         order_id INT PRIMARY KEY, 
         customer_id INT
     );
     INSERT INTO customers VALUES 
         (1, 'Alice'), 
         (2, 'Bob'), 
         (3, 'Charlie'), 
         (4, 'David'); 
     INSERT INTO orders VALUES 
         (1, 1), 
         (2, 1), 
         (3, 2), 
         (4, 3);

SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS


/*
Find customers who have made more than 1 order.
*/

SELECT C.CUSTOMER_NAME,
	   COUNT(*) AS NUMBER_OF_ORDERS
FROM CUSTOMERS C
JOIN ORDERS O 
ON C.CUSTOMER_ID = O.CUSTOMER_ID
GROUP BY 1
HAVING COUNT(*) > 1