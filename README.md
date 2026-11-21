# Zepto – Product, Pricing & Inventory Analysis | PostgreSQL

**SQL Data Analytics Project | Quick Commerce | Retail & E-commerce Analytics**

## 1. Project Overview

Quick-commerce businesses rely on effective pricing strategies, product availability and inventory management to remain competitive.

This project analyses Zepto's product-level dataset using **PostgreSQL** to evaluate pricing structures, discount strategies, stock availability and category-wise inventory value.

The analysis covers **3,732 product records across 14 categories**, transforming raw inventory data into actionable business insights to support pricing optimisation, promotional planning and inventory management.

## 2. Business Objectives

- Analyse product pricing, discounts and category-level trends.
- Identify stock availability patterns and potential inventory gaps.
- Clean and validate raw product data for accurate analysis.
- Evaluate estimated inventory value across product categories.
- Identify high-value products with limited availability or discounts.
- Translate SQL findings into actionable retail business recommendations.

## 3. Dataset Overview

**Source:** Kaggle – Zepto Product Dataset (originally scraped from Zepto product listings).

Each record represents a product SKU, with multiple records possible for the same product across different package sizes or variants.

**Key Attributes:**
- Product ID, Name and Category
- Maximum Retail Price (MRP)
- Discount Percentage and Selling Price
- Available Inventory Quantity
- Product Weight and Package Quantity
- Stock Availability Status

**Dataset Scope:** 3,732 product records | 14 categories

## 4. SQL Workflow & Technical Implementation

The project follows an end-to-end SQL analytics workflow:

1. **Database & Table Creation:** Designed a structured PostgreSQL table with appropriate data types and a primary key.
2. **Data Import:** Imported CSV data using pgAdmin 4 and resolved UTF-8 encoding issues.
3. **Exploratory Data Analysis:** Examined record counts, null values, distinct categories, stock distribution and duplicate product names.
4. **Data Cleaning:** Removed records with zero MRP or selling prices and converted price values from paise to Indian Rupees.
5. **Business Analysis:** Developed SQL queries to investigate pricing, discount distribution, inventory availability and product segmentation.

## 5. Key Business Insights

| Analysis Area | Key Finding |
|---|---|
| Product Availability | 3,279 products in stock and 453 out of stock; 12.14% unavailable. |
| Highest Discounts | Maximum recorded discount of 51%, including Dukes Waffy wafer variants. |
| High-Value Stock Gaps | 8 out-of-stock product records had an MRP above ₹300. |
| Inventory Valuation | Cooking Essentials and Munchies recorded approximately ₹3.37 lakh each in estimated inventory value. |
| Premium Pricing | 82 product records had an MRP above ₹500 and discounts below 10%. |
| Category Discounts | Fruits & Vegetables recorded the highest average discount at 15.46%; Home & Cleaning recorded the lowest at 5.68%. |
| Unit Price Analysis | Calculated price per gram for products weighing at least 100 grams to support value comparisons. |
| Product Segmentation | Classified products into LOW, MEDIUM and BULK weight segments using CASE WHEN. |

*Note: Estimated inventory value is calculated as discounted selling price × available quantity. It represents listed inventory value, not actual sales revenue.*

## 6. Business Recommendations

- **Inventory Optimisation:** Prioritise replenishment of frequently unavailable and commercially important products.
- **Pricing Strategy:** Evaluate high-discount products against margins, demand and competitor pricing.
- **Working Capital Management:** Monitor categories with high estimated inventory value to minimise excess stock and inventory ageing.
- **Promotional Effectiveness:** Adopt category-specific discount strategies instead of uniform promotional pricing.
- **Assortment Planning:** Use product weight and unit-price segmentation to improve product comparisons and inventory decisions.

## 7. SQL Skills Demonstrated

- Data Import and Data Cleaning
- Aggregate Functions: COUNT, SUM, AVG, MAX
- GROUP BY and ORDER BY WHERE and HAVING
- CASE WHEN Conditional Logic
- DISTINCT and NULL Handling
- Data Type Management and Numeric Calculations
- Category-Level Analysis and Business Reporting

## 8. Tools & Technologies

**Database:** PostgreSQL  
**SQL Environment:** pgAdmin 4  
**Language:** SQL  
**Data Source:** CSV (Kaggle)

## 9. Project Outcome

This project demonstrates the practical application of PostgreSQL in solving retail and quick-commerce business problems. It strengthened my ability to clean and analyse structured datasets, develop business-oriented SQL queries, identify operational patterns and convert analytical findings into data-driven recommendations.

**Focus Areas:** Product Analytics | Pricing Analytics | Inventory Management | Retail Analytics | Quick Commerce
