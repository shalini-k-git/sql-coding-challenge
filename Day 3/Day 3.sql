CREATE DATABASE ECommerceDB;
USE ECommerceDB;

CREATE TABLE products(
	ProductID INT NOT NULL PRIMARY KEY,
    Product_Name VARCHAR(50),
    Product_Category VARCHAR(50),
    Product_Price DECIMAL(10,2),
    Quantity INT
    );
    
INSERT INTO products
VALUES
		(1,'Pen','Stationary',5,10),
        (2,'Umbrella','Daily Essentials',300,10),
        (3,'Handbag','Accessories',500,15),
        (4,'Sharperner','Stationary',5,50),
        (5,'Desk','Furniture',3000,5);

SELECT * FROM products;

#Question 1
SELECT ProductID, Product_Name, Product_Price
FROM products
ORDER BY Product_Price DESC
LIMIT 3;

#Question 2
SELECT COUNT(ProductID) as Total_Sales_Record FROM products;

SELECT SUM(Product_Price) as Total_Sales_Amount FROM products;

SELECT AVG(Product_Price) as Avergae_Sales_Amount FROM products;

SELECT MAX(Product_Price) as Highest_Sales_Amount FROM products;

SELECT MIN(Product_Price) as Lowest_Sales_Amount FROM products;

#Question 3
SELECT ProductID,Product_Name,SUM(Product_Price*Quantity) as Total_Sales FROM products 
	GROUP BY Product_NAME,ProductID
    HAVING (Total_Sales>100);
    
#Question 4
SELECT 
    ProductID,
    Product_Name,
    Product_Price,
    RANK() OVER (ORDER BY Product_Price DESC) AS Price_Rank
FROM 
    products;

SELECT 
	ProductID,
    Product_Name,
    Product_Price,
    DENSE_RANK() OVER (ORDER BY Product_Price DESC) AS Price_Dense_Rank
FROM
	products;
    
