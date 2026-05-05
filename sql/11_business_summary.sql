-- ============================================================
-- Projet BI E-commerce Olist
-- Fichier : 11_business_summary.sql
-- Objectif : Résumer les principaux KPIs business
-- Table utilisée : sales_delivered
-- ============================================================

WITH customer_orders AS (
    SELECT
        customer_unique_id,
        COUNT(DISTINCT order_id) AS total_orders
    FROM sales_delivered
    GROUP BY customer_unique_id
),

delivery_stats AS (
    SELECT
        COUNT(*) AS total_delivered_items,
        SUM(
            CASE 
                WHEN order_delivered_customer_date > order_estimated_delivery_date 
                THEN 1 
                ELSE 0 
            END
        ) AS late_items
    FROM sales_delivered
    WHERE order_delivered_customer_date IS NOT NULL
)

SELECT
    COUNT(DISTINCT s.order_id) AS total_orders,
    COUNT(DISTINCT s.customer_unique_id) AS total_customers,
    ROUND(SUM(s.revenue), 2) AS total_revenue,
    ROUND(SUM(s.revenue) / COUNT(DISTINCT s.order_id), 2) AS average_order_value,
    COUNT(*) AS total_items_sold,
    ROUND(AVG(s.delivery_days), 2) AS avg_delivery_days,
    ROUND(
        100.0 * SUM(CASE WHEN co.total_orders > 1 THEN 1 ELSE 0 END) 
        / COUNT(DISTINCT s.customer_unique_id),
        2
    ) AS repeat_purchase_rate_percent,
    ROUND(
        100.0 * ds.late_items / ds.total_delivered_items,
        2
    ) AS late_delivery_rate_percent
FROM sales_delivered s
JOIN customer_orders co
    ON s.customer_unique_id = co.customer_unique_id
CROSS JOIN delivery_stats ds;