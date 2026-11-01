CREATE DATABASE olist_ecommerce ;

USE olist_ecommerce;

SELECT COUNT(*) AS total_rows,
	   COUNT(DISTINCT customer_id) AS distinct_customer_id ,
       COUNT(DISTINCT customer_unique_id) AS distinct_unique_id 
FROM olist_customers_dataset ;

USE olist_ecommerce;

SELECT c.customer_unique_id ,
	COUNT(DISTINCT o.order_id) AS total_orders ,
    ROUND(SUM(p.payment_value), 2) AS total_spent
FROM olist_customers_dataset c 
JOIN olist_orders_dataset o ON c.customer_id = o.customer_id
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
WHERE o.order_status = 'delivered' 
GROUP BY c.customer_unique_id
ORDER BY total_spent DESC 
LIMIT 10 ;


SELECT c.customer_unique_id ,
	COUNT(DISTINCT o.order_id) AS total_orders 
FROM olist_customers_dataset c 
JOIN olist_orders_dataset o ON c.customer_id = o.customer_id
WHERE o.order_status = 'delivered' 
GROUP BY c.customer_unique_id
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY total_orders DESC 
LIMIT 10;

SELECT LEFT(o.order_purchase_timestamp , 7) AS order_month ,
	COUNT(DISTINCT o.order_id) AS total_orders ,
    ROUND(SUM(p.payment_value), 2) AS revenue
FROM olist_orders_dataset o 
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
WHERE o.order_status = 'delivered' 
GROUP BY order_month
ORDER BY order_month ;