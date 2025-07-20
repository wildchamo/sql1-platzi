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
