-- =====================================================
-- Script de Inicialización de Base de Datos
-- Curso SQL Fundamentals - Platzi
-- =====================================================

-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS my_first_db;

-- Usar la base de datos
USE my_first_db;

-- Crear tabla de clientes
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(60) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL
);

-- Crear tabla de productos
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(100) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price FLOAT NOT NULL
);

-- =====================================================
-- Comandos Útiles para Verificar
-- =====================================================

-- Ver todas las tablas creadas
-- SHOW TABLES;

-- Ver la estructura de una tabla específica
-- DESCRIBE clients;
-- DESCRIBE products;

-- Eliminar una tabla (usar con precaución)
-- DROP TABLE nombre_tabla;

-- =====================================================
-- Ejemplos de Inserción de Datos
-- =====================================================

-- Insertar clientes de ejemplo
INSERT INTO clients (name, email, phone_number) VALUES
('Juan Pérez', 'juan@email.com', '1234567890'),
('María García', 'maria@email.com', '0987654321'),
('Carlos López', 'carlos@email.com', '5555555555');

-- Insertar productos de ejemplo
INSERT INTO products (sku, slug, name, description, price) VALUES
('PROD001', 'laptop-gaming', 'Laptop Gaming', 'Laptop para juegos de alto rendimiento', 1299.99),
('PROD002', 'mouse-inalambrico', 'Mouse Inalámbrico', 'Mouse inalámbrico ergonómico', 29.99),
('PROD003', 'teclado-mecanico', 'Teclado Mecánico', 'Teclado mecánico con switches blue', 89.99);

-- Ver los datos insertados
-- SELECT * FROM clients;
-- SELECT * FROM products;