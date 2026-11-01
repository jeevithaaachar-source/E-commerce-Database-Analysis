USE olist_ecommerce;

CREATE INDEX idx_cust_id ON olist_customers_dataset(customer_id) ;
CREATE INDEX idx_cust_unique ON olist_customers_dataset(customer_unique_id) ;
CREATE INDEX idx_ord_id ON olist_orders_dataset(order_id) ;
CREATE INDEX idx_ord_cust ON olist_orders_dataset(customer_id) ;
CREATE INDEX idx_items_ord ON olist_order_items_dataset(order_id) ;
CREATE INDEX idx_pay_ord ON olist_order_payments_dataset(order_id) ;

USE olist_ecommerce;
CREATE INDEX idx_items_ord ON olist_order_items_dataset(order_id) ;
CREATE INDEX idx_pay_ord ON olist_order_payments_dataset(order_id) ;