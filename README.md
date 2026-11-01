# Olist E-Commerce Analysis (SQL)

A SQL project that analyses a Brazilian e-commerce store using the Olist public dataset (about 99,000 orders, 2016 to 2018).

## What it answers
- Who are the top customers by money spent?
- How many customers buy more than once?
- How does revenue change month by month?

## Key findings
- The top customer spent R$13,664 in a single order, and most of the top 10 ordered only once.
- There are 96,096 unique customers for 99,441 orders, so most people buy only once.
- The most loyal customer placed 15 orders.
- Monthly revenue peaked in Nov 2017 at R$1.15 million, then stayed around R$1 million a month through mid-2018.
- Only delivered orders were used. Dec 2016 has just 1 order, so the earliest months are not reliable for trends.

## How it works
- The 4 CSV files (customers, orders, order items, payments) were loaded into MySQL Workbench using LOAD DATA LOCAL INFILE.
- Row counts were checked after loading to make sure all the data came in.
- Indexes were added on the join columns so the queries run fast.
- The customers, orders and payments tables were joined to answer each question.

## Skills used
Joins, GROUP BY, HAVING, ORDER BY, LIMIT, aggregate functions (COUNT, SUM, ROUND), string functions, indexes, data checking.

## Tools
MySQL Workbench, MySQL/MariaDB server (XAMPP)

## Files
- E-commerce_Database_Analysis_queries_1.sql to queries_6.sql: all the queries (data check, top customers, repeat customers, revenue trend)

## Data
Brazilian E-Commerce Public Dataset by Olist, from Kaggle (licence CC BY-NC-SA 4.0). The CSV files are not included here, so please download them from the Kaggle dataset page.
