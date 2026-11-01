USE olist_ecommerce;

SET GLOBAL local_infile = 1; 

LOAD DATA LOCAL INFILE 'C:/Users/Jeevitha/Desktop/data analytics learning data floder/archive (1)_olist_project/olist_customers_dataset.csv'
INTO TABLE olist_customers_dataset 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ;