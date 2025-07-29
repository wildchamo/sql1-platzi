-- Crear tabla de clientes -128 a 128, sino guardas 0, te permite del 0 al 256 
-- por qué no hacer pk a correos, números de telefono? deberían ser datos exclusivos de la base de datos, que no dependan del mundo exterior! El número debe ser propio de la base de datos!
--mientras no seas historiador o astronomo XD epoch, numero de segundos desde 1970
-- future proof
-- qué otras variables tendrá el mysql?

CREATE TABLE clients (
    client_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(60) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Crear tabla de productos
CREATE TABLE products (
    product_id INTEGER AUTO_INCREMENT PRIMARY KEY UNSIGNED,
    sku VARCHAR(100) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price FLOAT NOT NULL
);
