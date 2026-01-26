# Data Source & Dictionary

## Source
The dataset used in this project is the **Brazilian E-Commerce Public Dataset by Olist**, which can be found on Kaggle:
👉 [Download Dataset Here](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

> **Note:** Due to GitHub's file size limits, the raw CSV files are not included in this repository. Please download them from the link above to replicate the analysis.

## Data Structure
The dataset contains information on 100k orders from 2016 to 2018. Key tables used in this analysis:

| Table Name | Description | Key Columns |
|------------|-------------|-------------|
| `olist_orders_dataset` | Core order information | `order_id`, `customer_id`, `order_status`, `order_purchase_timestamp` |
| `olist_order_items_dataset` | Products within each order | `order_id`, `product_id`, `price`, `freight_value` |
| `olist_products_dataset` | Product details | `product_id`, `product_category_name` |
| `product_category_name_translation` | Translation to English | `product_category_name`, `product_category_name_english` |
| `olist_customers_dataset` | Customer location | `customer_id`, `customer_state`, `customer_city` |

## Data Preparation
Before analysis, the following steps were performed (see `scripts/01_cleaning.sql`):
1. **Type Casting:** Converted timestamps from strings to `TIMESTAMP` format.
2. **Handling NULLs:** Filtered out orders without valid category names.
3. **Master Table:** Joined orders, items, and products into a single denormalized table for Power BI performance.
