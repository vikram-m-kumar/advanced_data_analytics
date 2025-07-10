select 'Total Sales Amount' AS Measure, SUM(sales_amount) as 'Measure Value' from gold.fact_sales
UNION
select 'Total Quantity', SUM(quantity) from gold.fact_sales
UNION
select 'Average Price', AVG(price) from gold.fact_sales
UNION
select 'Total Orders', count(distinct order_number) from gold.fact_sales
UNION
select 'Total Products', count(product_key) from gold.dim_products
UNION
select 'Total Customers', count(customer_key) from gold.dim_customers;
