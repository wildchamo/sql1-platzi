select count(*) from products;


select count(*) from products where price <=500;

select sum(stock) from products;

select avg(price) from products;

select sum(price*stock) from products;

-- traducir todos los datos en información!

desc clients;

select email, if (email like '%@gmail.com', 1,0) as gmail ,if (email like '%@hotmail.com', 1,0) as hotmail from clients order by rand() limit 30;
