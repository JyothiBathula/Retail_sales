select * from sales;


select
    DATE_Format(order_date, '%y-%m') as sales_month,
    sum(quantity*price) as total_revenue
 From sales
 Group by DATE_Format(order_date, '%y-%m')
 order by sales_month;