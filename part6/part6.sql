SELECT MONTHNAME(paymentDate) AS "Month", YEAR(paymentDate) AS "Year",
ROUND(amount, 2) AS "Payments Received"
FROM payments