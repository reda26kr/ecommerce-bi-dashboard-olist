-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 03_sales_by_category.sql
-- Objectif : Identifier les catégories les plus performantes
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    product_category_name_english AS category,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(*) AS total_items_sold,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(revenue) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM sales_delivered
GROUP BY product_category_name_english
ORDER BY total_revenue DESC;