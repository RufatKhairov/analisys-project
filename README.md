# Olist E-commerce Business Analysis 🇧🇷

##  Project Overview
This project provides a comprehensive analysis of the **Olist E-commerce dataset**, focusing on key business metrics (KPIs) to evaluate marketplace health and product performance.

##  Tech Stack
- **Database:** PostgreSQL
- **Tool:** DBeaver
- **Languages:** SQL (PostgreSQL dialect)
- 
##  Key Business Metrics
After cleaning and processing over 100k orders, the following KPIs were identified:
- **AOV (Average Order Value):** $137.79
- **ARPU / ARPPU:** $141.48

##  Top 5 Product Categories
1. **[health_beauty]** — $1258660
2. **[watches_gifts]** — $1204990
3. **[bed_bath_table]** — $1036940
4. **[sports_leisure]** — $988026
5. **[computers_accessories]** — $911940



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
- The **Average Order Value** suggests a [middle-market/premium] customer base.
- **ARPU equals ARPPU** because the dataset consists only of customers who completed at least one transaction.
- The most profitable categories are related to **[Health & Beauty]**, showing strong demand in lifestyle sectors.

## Data Source
Data comes from Kaggle.com.
