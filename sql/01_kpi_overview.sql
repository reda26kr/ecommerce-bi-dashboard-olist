-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 01_kpi_overview.sql
-- Objectif : Calculer les KPIs globaux du business
-- Table utilisée : sales_delivered
-- ============================================================

SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_unique_id) AS total_customers,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(revenue) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM sales_delivered;