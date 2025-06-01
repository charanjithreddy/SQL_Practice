-- Joins Practice 
select c.customer_id,o.order_id from customers c full join orders o on c.customer_id=o.customer_id order by customer_id;
select c.customer_id,o.order_id from customers c full join orders o on c.customer_id=o.customer_id;	
select c.customer_id,o.order_id from customers c left  join orders o on c.customer_id=o.customer_id;
select c.customer_id,o.order_id from customers c inner join orders o on c.customer_id=o.customer_id;

-- Group by comands / aggregate functions .
select c.name,a.city,(select sum(amount) from orders o where o.customer_id=c.customer_id) from customers c,address a where c.customer_id=a.customer_id;
select c.name,a.city from customers c,address a where c.customer_id=a.customer_id;
select sum(amount), customer_id,order_date_time from orders group by (customer_id,order_date_time);
select sum(amount), customer_id from orders group by customer_id;
select c.name,(select sum(amount) from orders o where c.customer_id=o.customer_id) from customers c;

-- Simple joins 
select c.customer_id  as id , a.address_line_1 adrlinr from customers  c , address  a where c.customer_id = a.customer_id;
select c.customer_id id , a.address_line_1 adrlinr from customers  c , address  a where c.customer_id = a.customer_id;
select c.customer_id , a.address_line_1 from customers  c , address  a where c.customer_id = a.customer_id;
select c.customer_id , a.address_line_1 from customers c , address a where c.customer_id = a.customer_id
select c.customer_id , a.address_line_1 from customers c , address a
select customer_id ,name,(select address_line_1 from address a where a.customer_id=c.customer_id) from customers c;
