CREATE TABLE revenue_by_method AS
SELECT
    p.method,
    SUM(p.amount) AS total_revenue,
    COUNT(p.payment_id) AS transaction_count
FROM payments p
JOIN orders o ON p.order_id = o.order_id
WHERE o.status = 'Delivered'
GROUP BY p.method
ORDER BY total_revenue DESC;
