/*
PROJECT: Olist Brazilian E-commerce Analysis
STEP 01: Data Cleaning
DESCRIPTION: Casting data types, handling missing values, and preparing the Master Table for analysis.
*/

-- Check for duplicate orders
-- Ensures each order_id is unique to avoid skewing AOV and revenue metrics.
SELECT order_id, COUNT(*)
FROM olist_orders_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Data Type Conversion (Casting)
-- Converting string timestamps into actual TIMESTAMP format for time-series analysis.
ALTER TABLE olist_orders_dataset 
ALTER COLUMN order_purchase_timestamp TYPE TIMESTAMP USING order_purchase_timestamp::TIMESTAMP,
ALTER COLUMN order_approved_at TYPE TIMESTAMP USING order_approved_at::TIMESTAMP,
ALTER COLUMN order_delivered_carrier_date TYPE TIMESTAMP USING order_delivered_carrier_date::TIMESTAMP,
ALTER COLUMN order_delivered_customer_date TYPE TIMESTAMP USING order_delivered_customer_date::TIMESTAMP,
ALTER COLUMN order_estimated_delivery_date TYPE TIMESTAMP USING order_estimated_delivery_date::TIMESTAMP;

-- Handling Missing Values
-- Labeling null product categories as 'unknown' to prevent data loss during grouping.
UPDATE olist_products_dataset
SET product_category_name = 'unknown'
WHERE product_category_name IS NULL;

-- Create Master Table for Analytics
-- Joining Items, Orders, and Products into a single view for faster querying.
CREATE TABLE analytics_master_table AS
SELECT 
    oi.order_id,
    oi.price,
    o.customer_id,
    o.order_purchase_timestamp,
    p.product_category_name
FROM olist_order_items_dataset oi
JOIN olist_orders_dataset o ON oi.order_id = o.order_id
JOIN olist_products_dataset p ON oi.product_id = p.product_id;
