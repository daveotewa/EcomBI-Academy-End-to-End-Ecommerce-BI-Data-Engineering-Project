# 🛒 Ecommerce BI Dashboard Project

This project is a full-stack **Business Intelligence** solution for an e-commerce platform. It showcases how to collect, transform, analyze, and visualize data using SQL, Python, and Power BI.

---

## 📦 Project Components

| Tool         | Purpose                           |
|--------------|-----------------------------------|
| PostgreSQL   | Data storage & SQL transformations |
| Python       | ETL pipeline (load/clean CSVs)    |
| Power BI     | Interactive dashboards & reports  |
| Excel/CSV    | Source data files                 |

---

## 📁 Dataset Overview

We worked with 4 key tables, each with >1,000 rows:

- `customers`
- `orders`
- `payments`
- `products`

Optional: An `order_items` table can be used for product-level analysis.

---

## ⚙️ ETL Workflow (Python)

Python scripts were used to:

1. Load CSVs into PostgreSQL
2. Create clean schema and tables
3. Build materialized summary tables:
   - `monthly_revenue_summary`
   - `revenue_by_method`
   - `top_customers`

All SQL scripts are located in the `/sql/` directory.

---

## 📊 Dashboards (Power BI)

### 1. 📆 Monthly Revenue

- Measures: `total_orders`, `total_revenue`
- Aggregated by month
- Filterable by status

![image](https://github.com/user-attachments/assets/f3fbd0ce-817e-42fd-be83-1b3482de4435)



### 2. 💳 Revenue by Payment Method

- Visual: Bar chart
- Fields: `method`, `total_revenue`
- Features: consistent color scheme, tooltips, filters

![image](https://github.com/user-attachments/assets/d66255e6-20fb-4bbe-8c0d-ac21e27f1287)



### 3. 👤 Top Customers

- Visual: Top N bar chart
- Metric: total amount spent
- Sort: descending by revenue

![image](https://github.com/user-attachments/assets/d7e66a0c-d2f3-4451-a831-8be7b2f9f1fe)


---

## 📌 How to Use

1. Clone this repo
2. Set up PostgreSQL and run the scripts in `/sql/`
3. Open Power BI and connect to the PostgreSQL database
4. Explore the dashboards!

---

## ✅ Future Improvements

- Add `order_items` table for product-level insights
- Add calculated fields (e.g. AOV, CLV)
- Publish dashboards to Power BI Service

---

## 🧠 Author

**David Otewa**  
Data Analyst

