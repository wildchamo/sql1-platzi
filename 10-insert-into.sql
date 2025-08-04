create table invesment(
    investment_id int unsigned auto_increment primary key not null,
    product_id int unsigned not null,
    amount integer not null default 0
);

-- en el caso que no cuadren los tipos de datos, se hace un cast para acomodarlos!!!!

insert into invesment(product_id, amount) select product_id, round(stock*price) from products;


select * from invesment order by amount desc limit 10;


