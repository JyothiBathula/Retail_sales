select * from sales;

select 
     Category,
     SUM(quantity*price) as total_revenue
From sales
Group By category
Order BY total_revenue Desc;
