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


select client_id, name, email, phone_number from clients where name like '%Laura%';