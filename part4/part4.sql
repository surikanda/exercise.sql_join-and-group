SELECT productLine, COUNT(quantityOrdered) AS "# Sold"
FROM products JOIN productlines USING(productLine)
JOIN orderdetails USING(productCode)
GROUP BY productLine
ORDER BY 2 DESC; 