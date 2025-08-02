-- discriminar los datos que no quiero, traer solo lo que te interesa!
-- describir con atomicidad! sean 1 o 10k, traeme lo que te pido!

select * from clients limit 1 \G;

select name, email from  clients limit 1;


-- select update n delete, todas las operaciones de mysql se pueden usar en un where!!


select name, email from clients where expresion1 && expresion2 || expresion3;

-- devuelve todo lo que devuelva true en el where!!!!!

select name from clients where rand() < 0.001 ;

-- devolver clientes aleatorios! el tema, el rand es aleatorio en cada ejecución?


select name from clients where rand() < 0.001  and false;


select name from clients where true;

-- si le tiras false, nunca te va a devolver algo!

select name from clients c where name like 'Mr.%';


select name from clients c where name like 'Mr.%III';

select name from clients c where name like '%III' or name like '%IV';


select name, email from clients c where name like '%Gibson';

-- tremendo sexo el where!

select sku, name, price from products where price >= 100;

select name, price from products where price * 10 between 400 and 50000;

select * from bill_products where discount =0;


select * from bill_products where date_added between '2024-01-01' and '2025-01-31' and product_id in(837, 838, 839);




-- boolean por boolean!!! que poderoso el where!!!!