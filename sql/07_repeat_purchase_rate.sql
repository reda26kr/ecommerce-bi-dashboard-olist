-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 07_repeat_purchase_rate.sql
-- Objectif : Calculer le taux de réachat client
-- Table utilisée : sales_delivered
-- ============================================================

WITH customer_orders AS (
    SELECT
        customer_unique_id,
        COUNT(DISTINCT order_id) AS total_orders
    FROM sales_delivered
    GROUP BY customer_unique_id
)

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END) AS repeat_customers,
    ROUND(
        100.0 * SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS repeat_purchase_rate_percent
FROM customer_orders;