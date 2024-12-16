CREATE TABLE clients (
         client_id INT, 
         client_name VARCHAR(100), 
         contact_number VARCHAR(15)
     );
     INSERT INTO clients VALUES 
         (1, 'ABC Corp', '9876543210'), 
         (2, 'XYZ Ltd.', '9123456780'), 
         (3, 'Tech Solutions', '8765432100'), 
         (4, 'Innovatech', '9988776655'), 
         (5, 'Alpha Industries', '9988123456');



/*
Get the names and contact numbers of all clients.
*/

SELECT * FROM CLIENTS


SELECT CLIENT_NAME,
       CONTACT_NUMBER
FROM CLIENTS