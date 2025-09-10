# 🛒 E-commerce Sales Analytics (SQL Project)

## 📌 Project Overview

This project analyzes an **E-commerce dataset** using SQL to extract meaningful business insights.  
It demonstrates **data wrangling, aggregation, and analytical queries**, relevant for data analyst and apprenticeship roles.

Dataset used: [Olist E-commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

---

## 📊 Objectives

- Analyze sales trends and revenue growth
- Identify top products and customer segments
- Evaluate payment methods usage
- Calculate key business metrics like **AOV (Average Order Value)**

---

## 🗂️ Database Schema

- **customers(customer_id, customer_name, customer_city, customer_state)**
- **orders(order_id, customer_id, order_date, order_status)**
- **order_items(order_item_id, order_id, product_id, price, quantity)**
- **products(product_id, product_name, category)**
- **payments(payment_id, order_id, payment_type, payment_value)**

---

## 🔑 Key Insights

1. Total revenue generated from all orders
2. Monthly sales trends with revenue growth
3. Top 10 best-selling products
4. Average order value (AOV)
5. Top customers by total spend
6. Payment method distribution and revenue contribution

---

## ⚙️ Tech Stack

- **SQL (MySQL / PostgreSQL / SQLite)**
- Optional visualization: Google Data Studio / Tableau / Power BI

---

## 📌 How to Run

1. Create the database and run `schema.sql` to create tables.
2. Insert sample or Kaggle dataset records.
3. Run `queries.sql` for insights.

---
