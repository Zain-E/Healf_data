SELECT
product_name,
brand,
category,
ROUND(SUM(total_sales)/SUM(google_ad_spend),4) as return_on_ad_spend,
ROUND(SUM(net_profit)/SUM(google_ad_spend),4) as profit_on_ad_spend
FROM `zains-gcp.Healf.test_sales_fixed`
GROUP BY
product_name,
brand,
category
ORDER BY return_on_ad_spend DESC, product_name DESC