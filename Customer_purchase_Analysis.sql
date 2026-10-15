select * from sales;

select 
    customer_name,
    SUM(quantity*price) As total_spent
 From sales
 Group By customer_name
 Order By total_spent Desc;