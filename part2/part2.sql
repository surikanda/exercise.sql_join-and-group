SELECT p.productName, od.quantityOrdered AS "Total # Ordered", od.quantityOrdered * od.priceEach AS "Total Sale"
FROM products p JOIN orderdetails od 
ON p.productCode=od.productCode
ORDER BY od.quantityOrdered * od.priceEach DESC;