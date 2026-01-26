/*
PROJECT: Olist Brazilian E-commerce Analysis
STEP 03: Product & Category Deep Dive
DESCRIPTION: Detailed analysis of product performance, including revenue leaders, sales volume, and translation of categories.
*/

-- Top 10 Product Categories by Total Revenue
-- Identifies which categories are the primary "cash cows" for the business.
SELECT 
    product_category_name_english, 
    ROUND(SUM(price):: numeric, 2) AS total_revenue,
    COUNT(order_id) AS units_sold
FROM analytics_master_table
join product_category_name_translation
using (product_category_name)
GROUP BY product_category_name_english
ORDER BY total_revenue DESC
LIMIT 10;


