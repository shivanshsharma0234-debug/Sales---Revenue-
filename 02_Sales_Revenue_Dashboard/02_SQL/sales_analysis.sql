
-- Executive KPIs
SELECT COUNT(DISTINCT order_id) AS orders,
       SUM(quantity) AS units_sold,
       ROUND(SUM(revenue),2) AS revenue,
       ROUND(SUM(profit),2) AS profit,
       ROUND(100.0*SUM(profit)/NULLIF(SUM(revenue),0),2) AS margin_pct
FROM retail_sales;

-- Regional performance
SELECT region, ROUND(SUM(revenue),2) revenue, ROUND(SUM(profit),2) profit
FROM retail_sales GROUP BY region ORDER BY revenue DESC;

-- Product performance
SELECT product, category, SUM(quantity) units_sold,
       ROUND(SUM(revenue),2) revenue, ROUND(SUM(profit),2) profit
FROM retail_sales
GROUP BY product, category
ORDER BY revenue DESC;

-- Monthly trend
SELECT DATE_TRUNC('month', order_date) month,
       ROUND(SUM(revenue),2) revenue,
       ROUND(SUM(profit),2) profit
FROM retail_sales
GROUP BY 1 ORDER BY 1;

-- Category contribution
SELECT category,
       ROUND(SUM(revenue),2) revenue,
       ROUND(SUM(profit),2) profit,
       SUM(quantity) units_sold
FROM retail_sales
GROUP BY category ORDER BY revenue DESC;
