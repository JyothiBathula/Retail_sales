select 
   sum(quantity*price) as total_revenue
   from sales;
   
   
   select 
	product_name,
     sum(quantity*price) as total_sales
   from sales
   group by product_name
   order by total_sales desc;
   
    select
        city,
        sum(quantity*price) as total_revenue
    from sales
    Group By city
    order by total_revenue desc;
    
    select
      year(order_date) as sales_year,
      Month(order_date) as sales_month,
      sum(quantity*price) as total_revenue
   from sales
   group by 
        year(order_date),
        month(order_date)
   order by
   sales_year,
   sales_month;
      
      
      
      select *
      from sales
      where customer_name is null
      or product_name is null
      or price is null;
      
      
      select 
          order_id,
          count(*) as duplicate_count
       from sales
       group by order_id
       Having count(*)>1;
       
       select distinct category
       from sales;
       
       update sales
       set category = 'Electronics'
       where order_id = 3
       and category = 'electronics';
       
       
       select DISTINCT category
       from sales;
       
       update sales
       set category = 'Electronics'
       where category ='electronics';
       
       set sql_safe_updates=0;
       set sql_safe_updates=1;
       
       UPDATE sales
       SET category = 'Electronics'
       WHERE order_id = 3;
       
       select order_id ,category
       from sales
       where order_id = 3;
       
       select distinct category
       from sales;
       
       select distinct product_name
       from sales;
       
       update sales
       set product_name = 'Laptop'
       where product_name ='laptop'
        and order_id IN(1,7);
        
        select order_id,product_name
        from sales
        where order_id in (1,7);
        
        update sales
        set product_name = 'Shoes'
        where order_id in(2,8);
        
        select order_id,product_name
        from sales
        where order_id in (2,8);
        
        update sales
        set product_name = 'Phone'
        where order_id in (3,9);
        
        select order_id ,product_name
        from sales
        where order_id in (3,9);
        
        update sales
        set product_name = 'T-Shirt'
        where order_id in(4,10);
        
        select order_id,product_name
        from sales
        where order_id in (4,10);
        
        
select order_id ,product_name
from sales
order by order_id;

select distinct city
from sales
order by city;

UPDATE sales
set city = 'Birmingham'
where order_id = 3;

select order_id,city
from sales
where order_id= 3;


update sales
set city = 'Leeds'
where order_id in(6,10);

update sales
set city = 'Manchester'
where order_id in(2,9);

update sales
set city = 'Sheffield'
where order_id in (5,8);

update sales
 set city = 'London'
 where order_id in (1,4,7);
        
       select order_id,city
       from sales
       order by order_id;
       
       select *
       from sales
       order by order_id;
       
       
       select count(*) as total_orders
       from sales;
       
       
       select 
           sum(quantity*price) as total_revenue
           from sales;
       