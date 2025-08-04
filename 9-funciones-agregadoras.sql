select count(*) from products;

select count(*) from products where price <=500;

select sum(stock) from products;

select avg(price) from products;

select sum(price*stock) from products;

select round(sum(price*stock)) from products;

-- traducir todos los datos en información!

desc clients;

select email, if (email like '%@gmail.com', 1,0) as gmail from clients order by rand() limit 30;

select email, if (email like '%@gmail.com', 1,0) as gmail ,if (email like '%@hotmail.com', 1,0) as hotmail from clients order by rand() limit 30;

case when condition the 'columna 1'

case 
    when par then 'par'
    when impar then 'impar'
    else 'ni idea'
end

-- poderoso

select email, case 
    when email like '%@gmail.com' then 'gmail'
    when email like '%@hotmail.com' then 'hotmail'
    when email like '%@yahoo.com' then 'yahoo'
    else 'otro proveedor de correo'
end as proveedor
from clients order by rand() limit 30;



select email, case 
    when email like '%@gmail.com' then 'gmail'
    when email like '%@hotmail.com' then 'hotmail'
    when email like '%@yahoo.com' then 'yahoo'
    when email like '%@kozey.com' then 'kozey'
    else 'otro proveedor de correo'
end as email_provider
from clients;


select case 
    when email like '%@gmail.com' then 'gmail'
    when email like '%@hotmail.com' then 'hotmail'
    when email like '%@yahoo.com' then 'yahoo'
    when email like '%@kozey.com' then 'kozey'
    else 'otro proveedor de correo'
end as email_provider
from clients;



-- group by, muy poderoso!!!

select case 
    when email like '%@gmail.com' then 'gmail'
    when email like '%@hotmail.com' then 'hotmail'
    when email like '%@yahoo.com' then 'yahoo'
    when email like '%@kozey.com' then 'kozey'
    else 'otro proveedor de correo'
end as email_provider, count(*) as total_clientes
from clients group by email_provider
order by total_clientes desc;


-- having, muy poderoso!!!

select case 
    when email like '%@gmail.com' then 'gmail'
    when email like '%@hotmail.com' then 'hotmail'
    when email like '%@yahoo.com' then 'yahoo'
    when email like '%@kozey.com' then 'kozey'
    else 'otro proveedor de correo'
end as email_provider, count(*) as total_clientes
from clients
group by email_provider
having total_clientes < 70
order by total_clientes desc;



select case 
    when email like '%@gmail.com' then 'gmail'
    when email like '%@hotmail.com' then 'hotmail'
    when email like '%@yahoo.com' then 'yahoo'
    when email like '%@kozey.com' then 'kozey'
    else 'otro proveedor de correo'
end as email_provider, count(*) as total_clientes
from clients
where name like 'A%'
group by email_provider
order by total_clientes desc;
-- having total_clientes < 70


select name,email, case 
    when email like '%@gmail.com' then 'gmail'
    when email like '%@hotmail.com' then 'hotmail'
    when email like '%@yahoo.com' then 'yahoo'
    when email like '%@kozey.com' then 'kozey'
    else 'otro proveedor de correo'
end as email_provider
from clients
where name like 'A%';