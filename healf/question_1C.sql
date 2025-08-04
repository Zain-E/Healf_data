SELECT
product_name,
brand,
category,
FORMAT_DATE('%Y-%m', order_date) AS month_year,
COUNT(*) AS total_quantity_order,
ROUND(SUM(quantity)) AS total_quantity_product,
ROUND(SUM(total_sales) - SUM(total_cost) - SUM(google_ad_spend),2) as net_profit,
ROUND(((SUM(total_sales) - SUM(total_cost))/ SUM(total_sales)),2) as gross_margin,
ROUND(SUM(google_ad_spend),2) AS google_ad_spend
FROM `zains-gcp.Healf.test_sales_fixed`
GROUP BY
product_name,
brand,
category,
month_year
ORDER BY product_name, month_year DESC