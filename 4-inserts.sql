INSERT INTO prodcuts (name, slug) values ('lapicero azul','lapicero-azul');
INSERT INTO prodcuts (name, slug) values ('lapicero negro','lapicero-negro');
INSERT INTO prodcuts (name, slug) values ('lapicero rojo','lapicero-rojo');

INSERT INTO products (name, slug) values ('lapicero rosa','lapicero-rosa'), ('lapicero verde','lapicero-verde');


INSERT IGNORE INTO products (name, slug) values ('lapicero azul','lapicero-azul');


INSERT INTO products (name, slug) values ('lapicero azul','lapicero-azul') ON DUPLICATE KEY UPDATE slug = 'abc123', description = concat('descripcion ', values(slug)), name = 3*120*240;


select concat('hola ', 'adios!');

select rand();

alter table products add column price float not null default 15 after slug;

update products set price = rand() * 100;


-- sql puede hacer matematicas :0

-- 09:46:27	INSERT INTO products (name, slug) values ('lapicero azul','lapicero-azul') ON DUPLICATE KEY UPDATE slug = 'abc123', description = values(slug)	2 row(s) affected, 1 warning(s): 1287 'VALUES function' is deprecated and will be removed in a future release. Please use an alias (INSERT INTO ... VALUES (...) AS alias) and replace VALUES(col) in the ON DUPLICATE KEY UPDATE clause with alias.col instead	0.047 sec

-- 09:56:00	update products set price = rand() * 100	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.000 sec
