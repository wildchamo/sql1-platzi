select [columns]
from table1
join table2
on table1.column = table2.column



select *
from invesment
limit 10;



select p.product_id as pid, p.name, p.price, p.stock, i.amount, round(i.amount/p.price) as audited_stock
from invesment as i
left join products as p
on i.product_id=p.product_id
limit 10;

-- traer solo los datos del products!!

select p.*
from invesment as i
left join products as p
on i.product_id=p.product_id
limit 10;