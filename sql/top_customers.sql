CREATE TABLE top_customers AS
SELECT
    p.customer_id,
    SUM(p.amount) AS total_spent,
    COUNT(p.payment_id) AS total_transactions
FROM payments p
JOIN orders o ON p.order_id = o.order_id
WHERE o.status = 'Delivered'
GROUP BY p.customer_id
ORDER BY total_spent DESC;
