CREATE TABLE customers (
         customer_id INT, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE products (
         product_id INT, 
         product_name VARCHAR(100), 
         category_id INT, 
         price DECIMAL(10, 2)
     );
     CREATE TABLE purchases (
         purchase_id INT, 
         customer_id INT, 
         product_id INT
     );
     INSERT INTO customers VALUES 
         (1, 'Alice'), 
         (2, 'Bob'), 
         (3, 'Charlie');
     INSERT INTO products VALUES 
         (1, 'Laptop', 1, 800), 
         (2, 'Smartphone', 1, 600), 
         (3, 'Book', 2, 20), 
         (4, 'Headphones', 1, 150);
     INSERT INTO purchases VALUES 
         (1, 1, 1), 
         (2, 1, 2), 
         (3, 1, 3), 
         (4, 2, 2), 
         (5, 2, 3), 
         (6, 3, 1), 
         (7, 3, 2), 
         (8, 3, 4);


SELECT * FROM CUSTOMERS
SELECT * FROM PRODUCTS
SELECT * FROM PURCHASES

/*
List all customers who have made purchases in all product categories and the total amount they spent.
*/


--CUSTOMER_NAME
--PRODUCT_CATEGORY
--TOTAL_AMOUNT

SELECT 
    c.customer_name,
    SUM(p.price) AS total_amount_spent
FROM 
    customers c
JOIN 
    purchases pu ON c.customer_id = pu.customer_id
JOIN 
    products p ON pu.product_id = p.product_id
WHERE 
    c.customer_id IN (
        SELECT pu1.customer_id
        FROM purchases pu1
        JOIN products p1 ON pu1.product_id = p1.product_id
        GROUP BY pu1.customer_id
        HAVING COUNT(DISTINCT p1.category_id) = (
            SELECT COUNT(DISTINCT category_id) FROM products
        )
    )
GROUP BY 
    c.customer_name;


