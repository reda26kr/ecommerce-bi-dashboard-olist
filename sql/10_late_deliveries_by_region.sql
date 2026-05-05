-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 10_late_deliveries_by_region.sql
-- Objectif : Identifier les régions avec le plus fort taux de retard
-- Table utilisée : sales_delivered
-- ============================================================

SELECT
    customer_state AS region,
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
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY customer_state
HAVING COUNT(*) >= 100
ORDER BY late_delivery_rate_percent DESC;