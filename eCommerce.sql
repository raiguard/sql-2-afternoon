-- create tables
create table users (
  user_id serial primary key,
  name varchar(50),
  email varchar(60)
);

create table products (
  product_id serial primary key,
  name varchar(50),
  price decimal
);

create table orders (
  order_id serial primary key,
  user_id int references users(user_id)
);

create table order_products (
  order_id int references orders(order_id),
  product_id int references products(product_id)
);

-- create users
insert into users (
  name,
  email
) values (
  'Bob',
  'bob@gmail.com'
), (
  'Doug',
  'doug@gmail.com'
), (
  'Sarah',
  'sarah@gmail.com'
);

-- create products
insert into products (
  name,
  price
) values (
  'Bananas',
  2.95
), (
  'Apples',
  2.26
), (
  'Cheerios',
  5.99
);

-- create orders
insert into orders (
  user_id
) values (
  1
), (
  1
), (
  2
), (
  3
);

insert into order_products (
  order_id,
  product_id
) values (
  1,
  1
), (
  1,
  3
), (
  2,
  3
), (
  3,
  2
), (
  3,
  3
), (
  4,
  2
);

-- get all products for order 1
select *
from products p
where product_id in (
  select product_id
  from order_products
  where order_id = 1
);

-- get all orders
select *
from orders;

-- get total costs
select o.order_id, sum(p.price)
from orders o
join order_products op on o.order_id = op.order_id
join products p on op.product_id = p.product_id
group by o.order_id;

-- get all orders for a user
select *
from orders
where user_id = 2;

-- get how many orders each user has
select u.user_id, count(u.user_id)
from users u
join orders o on o.user_id = u.user_id
group by u.user_id;
