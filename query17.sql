SELECT contactFirstName AS firstName,contactLastName AS lastName,total FROM(SELECT contactFirstName,contactLastName,city,SUM(amount) AS total 
FROM customers,payments WHERE payments.customerNumber = customers.customerNumber GROUP BY contactFirstName,contactLastName,city) AS T1 WHERE city = "london";