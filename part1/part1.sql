SELECT customers.customerName, 
CONCAT (employees.lastName, ', ', employees.firstName) AS "Sales Rep"
FROM customers
INNER JOIN employees
ON customers.salesRepEmployeeNumber=employees.employeeNumber
ORDER BY customerName ASC;