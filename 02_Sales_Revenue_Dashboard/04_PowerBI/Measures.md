
# Core Power BI Measures

```DAX
Total Revenue = SUM(retail_sales[revenue])

Total Profit = SUM(retail_sales[profit])

Total Orders = DISTINCTCOUNT(retail_sales[order_id])

Units Sold = SUM(retail_sales[quantity])

Profit Margin = DIVIDE([Total Profit], [Total Revenue], 0)
```

Use percentage formatting for Profit Margin.
