select client_id, name, email, phone_number from clients limit 10;

-- +521202193114


-- puedes escribir sentencias sql como tu quieras!!
update clients 
set phone_number = '+573142758676'
where email =  'juana73@jacobson.com'
limit 1;


-- todas personas cuyo nombre tenga Laura, le quitas el telefono

update clients
set phone_number = null
where name like '%Laura%';


-- todas las personas cuyo nombre tenga Laura, le quitas el telefono

update clients
set phone_number = null
where name like '%Laura%';

update clients
set phone_number = null
where (name like '%Laura%' or name like '%Ana%') and phone_number is not null;

select client_id, name, email, phone_number from clients where name like '%Laura%';


-- products

alter table products add column stock integer not null default 0 after sku;


-- sexy

update products set stock = round(rand()*100);



update products set stock = stock - 1 where product_id = 1 ;

select * from products where product_id = 1;