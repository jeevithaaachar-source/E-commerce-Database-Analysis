USE olist_ecommerce;

SELECT 'customers' AS table_name , COUNT(*) AS total_rows FROM olist_customers_dataset
UNION ALL
SELECT 'orders' , COUNT(*) FROM olist_orders_dataset
UNION ALL
SELECT 'order_item' , COUNT(*) FROM olist_order_items_dataset
UNION ALL
SELECT 'payments' , COUNT(*) FROM olist_order_payments_dataset
UNION ALL
SELECT 'extra_table' , COUNT(*) FROM olist_ecommerce_dataset ;

