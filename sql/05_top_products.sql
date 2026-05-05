-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 05_top_products.sql
-- Objectif : Identifier les produits les plus rentables
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    product_id,
    product_category_name_english AS category,
    COUNT(*) AS total_items_sold,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(price), 2) AS average_price
FROM sales_delivered
GROUP BY product_id, product_category_name_english
ORDER BY total_revenue DESC
LIMIT 10;