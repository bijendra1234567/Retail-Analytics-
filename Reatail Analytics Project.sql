SELECT 
    DATE(TransactionDate) AS DateTrans,
    COUNT(TransactionID) AS NumberOfTransactions,
    SUM(QuantityPurchased) AS TotalUnitsSold,
    SUM(QuantityPurchased * Price) AS TotalSales
FROM sales_transaction
WHERE TransactionID BETWEEN 31150 AND 31547
GROUP BY DATE(TransactionDate)
ORDER BY DateTrans DESC;
