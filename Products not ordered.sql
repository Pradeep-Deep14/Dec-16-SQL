CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100)
     );
     CREATE TABLE orders (
         order_id INT PRIMARY KEY, 
         product_id INT
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone'), 
         (2, 'Laptop'), 
         (3, 'T-shirt'), 
         (4, 'Tablet'); 
     INSERT INTO orders VALUES 
         (1, 1), 
         (2, 2);


SELECT * FROM PRODUCTS
SELECT * FROM ORDERS

/*
List products that have never been ordered
*/

SELECT P.PRODUCT_NAME
FROM PRODUCTS P
JOIN ORDERS O
ON P.PRODUCT_ID = O.PRODUCT_ID
AND O.PRODUCT_ID IS NOT NULL