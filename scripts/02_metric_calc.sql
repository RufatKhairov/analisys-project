/*
PROJECT: Olist Brazilian E-commerce Analysis
STEP 02: Business Metrics Calculation
DESCRIPTION: Calculating key performance indicators (KPIs) including AOV, Top Categories, ARPU, and ARPPU.
*/

-- 1. Average Order Value (AOV)
-- Measures the average amount spent by a customer per order.
select ROUND (SUM(price) :: numeric / COUNT(DISTINCT order_id), 2) as aov 
from analytics_master_table

-- 2. ARPU & ARPPU
-- Analyzing revenue per registered user vs. revenue per paying customer.
WITH revenue AS (
    SELECT SUM(price) as total_rev FROM olist_order_items_dataset
),
users AS (
    SELECT COUNT(DISTINCT customer_unique_id) as total_users FROM olist_customers_dataset
),
paying_users AS (
    SELECT COUNT(DISTINCT c.customer_unique_id) as total_paying_users
    FROM olist_orders_dataset o
    JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
)
SELECT 
    ROUND((r.total_rev / u.total_users) :: numeric, 2) AS arpu,
    ROUND((r.total_rev / p.total_paying_users) :: numeric, 2) AS arppu
FROM revenue r, users u, paying_users p;