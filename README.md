# SQL Fundamentals - Platzi Course

## 📚 Descripción

Este repositorio contiene mis apuntes y ejercicios del curso de **SQL Fundamentals** de Platzi. Aquí encontrarás conceptos básicos, ejemplos prácticos y scripts de base de datos.

## 🗂️ Estructura del Proyecto

```
sql1-platzi/
├── docs/           # Documentación y apuntes
├── init.sql        # Script de inicialización de base de datos
└── README.md       # Este archivo
```

## 📖 Documentación

### Apuntes del Curso

- **[¿Qué es SQL?](docs/que-es-sql.md)** - Conceptos fundamentales del lenguaje SQL
- **[Introducción](docs/intro.md)** - Primeros pasos con bases de datos
- **[MySQL en macOS](docs/mysql-macos.md)** - Guía de instalación para macOS
- **[Conceptos que Nunca Cambian](docs/nunca-cambian.md)** - Principios fundamentales

### Scripts de Base de Datos

- **[init.sql](init.sql)** - Script de inicialización con tablas de ejemplo

## 🚀 Inicio Rápido

### 1. Instalar MySQL

```bash
# En macOS con Homebrew
brew install mysql
brew services start mysql
```

### 2. Conectarse a MySQL

```bash
mysql -u root -p
```

### 3. Ejecutar el script de inicialización

```sql
source init.sql;
```

## 📝 Comandos Básicos de MySQL

```sql
-- Ver todas las bases de datos
SHOW DATABASES;

-- Usar una base de datos
USE nombre_base_datos;

-- Ver todas las tablas
SHOW TABLES;

-- Ver estructura de una tabla
DESCRIBE nombre_tabla;
```

## 🎯 Objetivos del Curso

- ✅ Entender los fundamentos de SQL
- ✅ Aprender a diseñar bases de datos relacionales
- ✅ Dominar las consultas básicas y avanzadas
- ✅ Practicar con casos reales de negocio

## 📚 Recursos Adicionales

- [Documentación oficial de MySQL](https://dev.mysql.com/doc/)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [SQL Zoo](https://sqlzoo.net/) - Ejercicios interactivos

## 🤝 Contribuciones

Este es un repositorio personal de apuntes, pero si encuentras algún error o tienes sugerencias, ¡siempre son bienvenidas!

## 📄 Licencia

Este proyecto es de uso educativo personal.
