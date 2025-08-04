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


-- podrías traer solo stock ya que solo está en una sola tabla!!! el problema es que no te da resultado legible


select p.product_id as pid, p.name, p.price, p.stock, i.amount, round(i.amount/p.price) as audited_stock, if(round(i.amount/p.price)=p.stock, 'ok', 'error') as status
from invesment as i
left join products as p
on i.product_id=p.product_id
limit 10;


-- convertir datos en informaciòn! puedes hacer join de N tablas!