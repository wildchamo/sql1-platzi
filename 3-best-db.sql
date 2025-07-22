create table if not exists clients (
    client_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

create table if not exists products(
    product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


create table if not exists bills(
    bill_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    total DECIMAL(10, 2) NOT NULL,
    client_id INTEGER UNSIGNED NOT NULL,
    status ENUM('open','paid', 'lost') NOT NULL DEFAULT 'open',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
    on delete cascade
    on update cascade
);

create table if not exists bill_products(
    bill_product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    bill_id INTEGER UNSIGNED NOT NULL,
    product_id INTEGER UNSIGNED NOT NULL,
    quantity INTEGER UNSIGNED NOT NULL DEFAULT 1,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (bill_id) REFERENCES bills(bill_id)
    on delete cascade
    on update cascade
    FOREIGN KEY (product_id) REFERENCES products(product_id)
    on delete cascade
    on update cascade
)



insert into bills (
client_id, total) values (10, 15.00) Hacer algo como esto da error, ya que no existe un cliente con id 10.

insert into clients (name, email) values ('Juan Perez', 'juan@gmail.com');



-- usar relaciones suaves, cumplir las reglas de integridad en la capa de aplicación y no en la base de datos!


create table if not exists products(
    product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


create table if not exists bills(
    bill_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    total DECIMAL(10, 2) NOT NULL,
    client_id INTEGER UNSIGNED NOT NULL,
    status ENUM('open','paid', 'lost') NOT NULL DEFAULT 'open',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
);

create table if not exists bill_products(
    bill_product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    bill_id INTEGER UNSIGNED NOT NULL,
    product_id INTEGER UNSIGNED NOT NULL,
    quantity INTEGER UNSIGNED NOT NULL DEFAULT 1,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)


-- nadie mas que tu toma esas decisiones! el problema de hacer conexiones suaves entre entidades es la dependencia de un servicio externo! 

-- todo es un trade-off!

create table test (
    test_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) not null,
    quantity int not null,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp on update current_timestamp
);
-- queremos agregar la columna price


alter table test add column price decimal(10, 2) not null default 0;
alter table test drop column price;

alter table test add column price decimal(10, 2) not null default 0 after name;

-- no es un error querer tener ordenadas las columnas!

alter table test modify column price decimal(10, 4) not null default 0;

-- fintech operarlos precios con X numero de decimales!

-- hay que tener cuidado con estas actualizaciones en produccion!

-- numeric
-- dec
-- fixed 
-- decimal (m, p) m logintud total, p numero de decimales

alter table test rename column price to prices;


alter table test rename to tests;






