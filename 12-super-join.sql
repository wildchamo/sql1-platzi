select b.bill_id, b.status, c.name,
count(bp.bill_product_id) as number_of_products
from bills as b

left join clients as c
on b.client_id=c.client_id

left join bill_products as bp
on b.bill_id=bp.bill_id
limit 30;

-- un join debe apuntar siempre a la tabla inicial? naa

select b.bill_id, b.status, c.name,
count(bp.bill_product_id) as number_of_products
from bills as b

left join clients as c
on b.client_id=c.client_id

left join bill_products as bp
on b.bill_id=bp.bill_id
group by b.bill_id 
limit 30;


-- group by es para agrupar los resultados por una columna, es decir, si tienes una columna con valores repetidos, group by te permite agruparlos y hacer operaciones sobre ellos.

-- count es para contar el número de filas que hay en una tabla.

-- left join es para unir dos tablas y traer todos los datos de la tabla izquierda y los datos de la tabla derecha que coincidan con la condición.

select count(*) from bill_products where bill_id=2;


--- patrones en lineas de tiempo!!!


-- las bases de datos estan en todos lados!!!

-- que la base de datos te responda preguntas!!!

select b.bill_id,b.status,c.name,count(bp.bill_product_id) as number_of_products
from bills as b
left join clients as c
on b.client_id=c.client_id
left join bill_products as bp
on bp.bill_id=b.bill_id
group by b.bill_id;