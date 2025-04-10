CREATE TABLE monthly_revenue_summary AS
SELECT
    DATE_TRUNC('month', o.order_date::date) AS month,
    SUM(p.amount) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE o.status = 'Delivered'
GROUP BY 1
ORDER BY 1;
