# Olist E-commerce Business Analysis 🇧🇷

##  Project Overview
This project provides a comprehensive analysis of the **Olist E-commerce dataset**, focusing on key business metrics (KPIs) to evaluate marketplace health and product performance.

##  Tech Stack
- **Database:** PostgreSQL
- **Tool:** DBeaver
- **Languages:** SQL (PostgreSQL dialect)
  
##  Key Business Metrics
After cleaning and processing over 100k orders, the following KPIs were identified:
- **AOV (Average Order Value):** $137.79
- **ARPU / ARPPU:** $141.48

##  Top 5 Product Categories
1. **Health & beauty** — $1.258.660
2. **Watches & gifts** — $1.204.990
3. **Bed bath table** — $1.036.940
4. **Sports leisure** — $988.026
5. **Сomputers accessories** — $911.940



## Repository Contents
| File / Folder | Description |
|---------------|------------|
| `scripts/01_data_cleaning.sql` | Data type casting, NULL handling, and Master Table creation. |
| `scripts/02_metrics_calc.sql` |Logic for AOV, ARPU. |
| `scripts/03_product_analysis.sql` | Deep dive into category performance.|
| `visuals/` | Dashboard screenshots and charts. |
| `data/` | Link to the original Kaggle dataset and data dictionary. |
| `README.md` | Project summary, insights, and methodology. |

##  Key Insights
- **Customer Loyalty:** The ARPU ($141.48) is higher than the AOV ($137.79), indicating that a portion of the customer base returns for repeat purchases or buys multiple items per order.
- **Spending Power:** An AOV of nearly $138 suggests a middle-to-high ticket marketplace, as customers are comfortable making significant online purchases.
- **Lifestyle Dominance:** The top two categories (**Health & Beauty** and **Watches & Gifts**) account for over $2.4M in revenue, showing that Olist is a primary destination for lifestyle and gift shopping in Brazil.

## Data Source
Data comes from Kaggle.com.
