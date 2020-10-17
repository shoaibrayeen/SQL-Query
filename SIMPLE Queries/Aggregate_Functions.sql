# Query for Count number of products
SELECT
    COUNT(*) product_count
FROM
    production.products
WHERE
    list_price > 500;

# Query for MAX price
SELECT
    MAX(list_price) max_list_price
FROM
    production.products;
    
# Query for MIN price 
SELECT
    MIN(list_price) min_list_price
FROM
    production.products;   
    
# Query to calculate the total stock by product id in all warehouses
SELECT 
    product_id, 
    SUM(quantity) stock_count
FROM 
    production.stocks
GROUP BY
    product_id
ORDER BY 
    stock_count DESC;
