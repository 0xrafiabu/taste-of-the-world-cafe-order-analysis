use restaurant_db;

-- View the menu_items table. --

select *
from menu_items;

-- Find the number of items on the menu. --

select count(*)
from menu_items;

-- What are the least ans most expensive items on the menu? --

select *
from menu_items
order by price asc;

select *
from menu_items
order by price desc;


-- How many Italian dishes are on the menu? --

select count(*)
from menu_items
where category = 'Italian';

-- What are the least ans most expensive Italian dishes on the menu? --

select *
from menu_items
where category = 'Italian'
order by price asc;

select *
from menu_items
where category = 'Italian'
order by price desc;

-- How many dishes are in each category? --

select category, count(menu_item_id) as num_dishes
from menu_items
group by category;

-- What is the average dish price within each category? --

select category, avg(price) as avg_price
from menu_items
group by category;