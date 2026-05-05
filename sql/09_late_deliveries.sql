-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 09_late_deliveries.sql
-- Objectif : Calculer le taux de livraisons en retard
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    COUNT(*) AS total_items_sold,
    SUM(
        CASE 
            WHEN order_delivered_customer_date > order_estimated_delivery_date 
            THEN 1 
            ELSE 0 
        END
    ) AS late_items,
    ROUND(
        100.0 * SUM(
            CASE 
                WHEN order_delivered_customer_date > order_estimated_delivery_date 
                THEN 1 
                ELSE 0 
            END
        ) / COUNT(*),
        2
    ) AS late_delivery_rate_percent
FROM sales_delivered
WHERE order_delivered_customer_date IS NOT NULL;