-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 08_delivery_performance.sql
-- Objectif : Analyser les délais de livraison
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    ROUND(AVG(delivery_days), 2) AS avg_delivery_days,
    MIN(delivery_days) AS min_delivery_days,
    MAX(delivery_days) AS max_delivery_days,
    COUNT(*) AS total_items_sold
FROM sales_delivered
WHERE delivery_days IS NOT NULL;