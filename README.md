# SQL Exploratory Data Analysis (EDA) on Sales Dataset

This project performs a complete SQL-based exploratory data analysis (EDA) on sales data, covering five key areas: dimension-based, date-based, measure-based, magnitude-based, and ranking-based analysis to extract meaningful business insights.

---

## EDA Breakdown

## 1. Dataset Overview

- Table used: `orders`
- Sample fields: `order_id`, `product_name`, `sales`, `profit`, `order_date`, `region`, `ship_mode`, `customer_segment`, etc.
- Source: hackernoon.com/15-excel-datasets-for-data-analytics-beginners



### 2. Dimension-Based EDA
Explores unique values across:
- Geography: Country, Region, State, City, Postal Code
- Product: Category, Sub-Category, Container
- Business Processes: Order Priority, Shipping Mode, Customer Segment

### 3. Date-Based EDA
- Identifies first and last order dates
- Calculates range of sales history in months

### 4. Measure-Based EDA
Key business KPIs:
- Total Sales, Profit, Orders, Customers
- Average Discount, Shipping Cost, Base Margin
- Profit Margin %, Revenue per Order, Profit per Customer

### 5. Magnitude-Based EDA
Aggregates metrics by:
- State, City, Product Category, Customer Segment, Ship Mode
- Reveals which regions and products generate most activity

### 6. Ranking-Based EDA
- Top/Bottom products by sales
- Best customers by revenue
- Top cities and product categories by performance

---

## Sample Output Metrics

| Metric                     | Value (Example)    |
|---------------------------|--------------------|
| Total Sales               | $2,297,201         |
| Total Orders              | 9,994              |
| Average Discount (%)      | 11.50%             |
| Top-Selling Product       | "Canon Copier 500" |
| Profit Margin (%)         | 8.75%              |

---

## DBMS Used

- SQL Server

---

## How to Use

1. Clone this repo
2. Load the orders.tsv dataset into your SQL environment (SQL Server / PostgreSQL / etc.)
3. Run the 6  `.sql` scripts to explore different aspects of the data
4. Optionally, build visualizations on top of these insights

---

## Learnings

- Performed multi-angle analysis using SQL
- Identified key revenue drivers and underperformers
- Practiced clean SQL formatting and reusable EDA templates

---

## Contact

Feel free to connect or ask questions!

- Author: Muhmmad Munsif
- LinkedIn: linkedin.com/in/muhammad-munsif/
- Tableau: public.tableau.com/app/profile/muhammadmunsif/vizzes
---

- Last Updated: 2025-08-04
