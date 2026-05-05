-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 04_sales_by_region.sql
-- Objectif : Identifier les régions les plus performantes
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    customer_state AS region,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_unique_id) AS total_customers,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(revenue) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM sales_delivered
GROUP BY customer_state
ORDER BY total_revenue DESC;