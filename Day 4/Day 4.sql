USE ECommerceDB;

#Question 1
SELECT * FROM product
ORDER BY price DESC;

#Question 2
SELECT * FROM product
ORDER BY price DESC
LIMIT 3;

#Question 3
SELECT SUM(sale_amount) as total_sales from Sales;

#Question 4
SELECT AVG(sale_amount) as Avg_total_sales from Sales;

#Question 5
SELECT 
	COUNT(sale_id) as total_no_of_sales,
    MAX(sale_amount) as highest_sales,
    MIN(sale_amount) as lowest_sales
FROM sales;

#Question 6
SELECT p.product_id,p.product_name,SUM(s.sale_amount) as total_sales
	FROM product as p
    JOIN sales as s
    ON s.product_id= p.product_id
GROUP BY product_id,product_name;

#Question 7
SELECT p.product_id,p.product_name,SUM(s.sale_amount) as total_sales
	FROM product as p
    JOIN sales as s
    ON s.product_id= p.product_id
GROUP BY product_id,product_name
HAVING SUM(s.sale_amount)>50000;

#Question 8
SELECT p.product_id,p.product_name,SUM(s.sale_amount) as total_sales
	FROM product as p
    JOIN sales as s
    ON s.product_id= p.product_id
GROUP BY product_id,product_name
ORDER BY total_sales DESC;
  
#Question 9
SELECT p.product_id,p.product_name,SUM(s.sale_amount) as total_sales
	FROM product as p
    JOIN sales as s
    ON s.product_id= p.product_id
GROUP BY product_id,product_name
ORDER BY total_sales DESC
LIMIT 3;

#Question 10
SELECT p.product_id,p.product_name,SUM(s.sale_amount) as total_sales
	FROM product as p
    JOIN sales as s
    ON s.product_id= p.product_id
GROUP BY product_id,product_name
HAVING SUM(s.sale_amount)>30000 AND AVG(s.sale_amount>10000);
  