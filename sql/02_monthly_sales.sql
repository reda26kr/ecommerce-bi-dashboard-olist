-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 02_monthly_sales.sql
-- Objectif : Analyser l'évolution mensuelle du chiffre d'affaires
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    order_year_month,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(revenue) / COUNT(DISTINCT order_id), 2) AS average_order_value,
    COUNT(*) AS total_items_sold
FROM sales_delivered
GROUP BY order_year_month
ORDER BY order_year_month;