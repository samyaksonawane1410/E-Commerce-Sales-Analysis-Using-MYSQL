#intermediate functions

#find the total number of customers
select count(*) as total_customers
from customers;
#find the average product price in each category
select category, avg(price) as average_price
from products
group by category;
#find total sales for each product category
select
p.category,
sum(oi.quantity*p.price) as total_sales
from order_items oi
join products p
on oi.product_id=p.product_id
group by p.category;