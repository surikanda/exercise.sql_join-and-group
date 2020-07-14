SELECT CONCAT(e.lastName, ", ", e.firstName) AS "Sales Rep",
COUNT(o.orderNumber) AS "# Orders", SUM(IFNULL(od.quantityOrdered * od.priceEach, 0)) AS "Total Sales" 
FROM employees e LEFT JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber
LEFT JOIN orders o ON o.customerNumber=c.customerNumber
LEFT JOIN orderdetails od ON od.orderNumber=o.orderNumber
WHERE e.jobTitle="Sales Rep" 
GROUP BY 1
ORDER BY 3 DESC;