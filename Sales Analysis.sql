USE sales_analysis;

SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(o.order_date, '%d-%m-%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(o.order_date, '%d-%m-%Y')) AS month,
    SUM(d.Amount) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM Orders o
JOIN Details d ON o.order_id = d.order_id
GROUP BY year, month
ORDER BY year, month;


