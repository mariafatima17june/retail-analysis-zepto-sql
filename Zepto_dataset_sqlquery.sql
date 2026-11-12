drop table if exists zepto ;
 create table zepto(
sku_id serial primary key,
category VARCHAR (120),
name varchar(150) not null,
mrp numeric (8,2),
discountpercent numeric(5,2),
availablequantity integer,
discountsellingprice numeric(8,2),
weightingrams integer,
outofstock boolean,
quantity integer
 );
 
--checking the columns
 select * from zepto;

--DATA EXPLORATION
--sample data
select * from zepto limit 10

--count of rows
SELECT COUNT(*) FROM ZEPTO;

 --null values
 SELECT * FROM ZEPTO 
 WHERE category IS NULL
 OR
 name  IS NULL
 OR
 mrp IS NULL
 OR
 discountpercent IS NULL
 OR
 availablequantity IS NULL
OR
discountsellingprice IS NULL
OR
 weightingrams IS NULL
OR
 outofstock IS NULL
OR
 quantity IS NULL;

 -different product categories
 SELECT DISTINCT category from zepto
 ORDER BY category; 

 --products in stock and outof stock
 SELECT outofstock, COUNT(sku_id) FROM ZEPTO
 GROUP BY outofstock;

 --product names present multiple times 
 SELECT name,count(sku_id) as "number of skus"
 from zepto group by name
 having count(sku_id)>1
 order by count(sku_id) DESC;

 --product with price=0
 SELECT * FROM ZEPTO 
 where mrp=0 or discountsellingprice=0;

 delete from zepto where mrp=0;

 --convert paise to rupee 
 update zepto set mrp=mrp/100.0,
 discountsellingprice=discountsellingprice/100.0;

 select mrp ,discountsellingprice from zepto;

--Q1 find the top 10 best value products based on the discount percentage
SELECT DISTINCT name,mrp ,discountpercent 
from zepto 
order by discountpercent DESC
limit 10;

--Q2 what are the products with high MRP but out of stock
SELECT DISTINCT name ,mrp from zepto
where outofstock = True
and mrp > 300
Order by mrp DESC;

--Q3 calculate estimated revenue for each category
SELECT category, 
SUM(discountsellingprice * availablequantity) AS total_revenue
FROM zepto 
GROUP BY category
ORDER BY total_revenue;

--Q4 ind all products where mrp is greater than 500 and discount is less than 10%
SELECT DISTINCT name, mrp ,discountpercent
FROM zepto
WHERE mrp > 500
and
discountpercent <10
ORDER BY mrp DESC ,discountpercent DESC;

--Q5 identify the top 5 categories offering the highest average discount percent
SELECT category ,ROUND(avg(discountpercent),2) AS avg_discount 
FROM zepto 
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

--Q6 find the price per gram for products above 100grams and sort by best value
SELECT DISTINCT name ,weightingrams,discountsellingprice,
round(discountsellingprice/weightingrams ,2) AS Price_per_gram
from zepto
where weightingrams>=100
Order By  Price_per_gram;

--Q7 group the products into categories like low medium bulk
SELECT DISTINCT name, weightingrams,
CASE WHEN weightingrams<1000 THEN 'LOW'
	WHEN weightingrams <5000 THEN 'MEDIUM'
	ELSE 'BULK'
	END AS weight_category
FROM zepto
ORDER BY weight_category;

--Q8 what is the total inventory weight per category
SELECT category ,
sum(weightingrams * availablequantity) AS total_weight 
FROM zepto 
GROUP BY category 
Order by total_weight;