-- eliminar de forma lògica vs eliminar de forma fisica, agregarle un boolean de active!

desc clients;


-- los datos no deberìan eliminarse fisicamente!
alter table clients add column is_active boolean default true not null after phone_number;


-- active o deleted_at?


select * from clients order by name asc limit 10;

update clients set is_active = false where client_id = 3667;

select * from clients where is_active = false order by name asc limit 10;


-- posiblmenete tengas la responsabilidad legal de mantener esa organizaciòn! 

-- el delete depende de una columna!!!

-- eliminaciòn fisica


DELETE FROM clients
WHERE client_id = 68852 limit 1;


select * from clients where client_id = 68852 limit 1;

select * from clients where name like '%DVM' and name like 'Mrs.%';

delete from clients where name like '%DVM' and name like 'Mrs.%';

-- los wildcards son cool!

-- dejas de contar con esa informaciòn!!!


select * from clients order by rand() limit 10;


-- drive safe!!!!!!