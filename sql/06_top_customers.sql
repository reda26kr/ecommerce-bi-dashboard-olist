-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 06_top_customers.sql
-- Objectif : Identifier les clients les plus fidèles
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(*) AS total_items_bought,
    ROUND(SUM(revenue), 2) AS total_spent,
    ROUND(SUM(revenue) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM sales_delivered
GROUP BY customer_unique_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY total_orders DESC, total_spent DESC
LIMIT 20;