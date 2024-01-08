SELECT ANY_VALUE(email) as email FROM(SELECT ANY_VALUE(email) as email,COUNT(employeeNumber) as total FROM employees,customers WHERE 
customers.salesRepEmployeeNumber=employeeNumber GROUP BY employeeNumber) as table1 WHERE total <= all(SELECT COUNT(employeeNumber) as total FROM employees,customers WHERE 
customers.salesRepEmployeeNumber=employeeNumber GROUP BY employeeNumber);