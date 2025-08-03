select columnas, variables, funciones too ! (price* stock)
from tablas!!!! pueden ser 1 0 mas tablas
where  importante el where! la condición
group by
having
order by
limit ;

select now();
select database();


select * from products limit 1;

select * from products limit 1\G;


select name, sku,stock,price, product_id from products limit 1;


select name, sku,stock,price, product_id, price*stock as total from products where price <=100 and stock > 90 order by stock desc;



select name, sku,stock,price, product_id, round(price*stock) as total from products where price <=100 and stock > 90 order by total desc;


select name, sku,stock,price, product_id, round(price*stock) as total from products order by total asc;

select name, sku,stock,price, product_id, round(price*stock) as total from products order by total desc limit 2,10;

limit a 
limit 0, a
limit b, a