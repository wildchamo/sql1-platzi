# ¿Qué es SQL?

## Definición y Origen

**SQL** (Structured Query Language) es un **lenguaje de consultas** estructurado.

- **Creado en los años 80s** - tiene décadas de evolución
- **Propósito principal:** Leer y consultar datos
- **Requisito previo:** Antes de leer, necesitas escribir los datos

---

## Características Fundamentales

### Datos de Calidad

- **Integros** - sin errores o inconsistencias
- **Disponibles** - accesibles cuando se necesiten
- **Bien organizados** - estructurados de forma lógica

### Del Excel a las Bases de Datos Relacionales

> **¿Cuál es la primera base de datos? EXCEL**

**Problema con Excel:**

- Múltiples archivos de Excel no son escalables
- Limitaciones para grandes volúmenes de datos
- **No soporta alta concurrencia:** Si quieres que tu base de datos soporte 150 requests por segundo, Excel no solventa casi nada 😅

**¿Cuándo usar cada uno?**

- **Excel:** Datos pequeños, análisis simple, uso individual
- **Base de datos relacional:** Datos complejos, múltiples usuarios, escalabilidad

---

## El Valor de los Datos

### De Datos a Información

> **Un dato por sí solo no genera valor, es necesario que se convierta en información**

**Pregunta clave:** ¿El número tiene una traducción útil?

### Ejemplo Práctico

- **Dato:** SKU 123456
- **Información:** "Dame un SKU y yo te doy el precio!"

---

## Lenguaje Estructurado

### Comunicación con la Máquina

**Objetivo:** Decirle a una máquina exactamente lo que quieres que te dé

### Ejemplos de Consultas

#### Consulta Simple

```sql
SELECT price FROM products WHERE sku = 123456
```

**Lógica:** Si no cumple la condición, no me traigas nada

#### Consulta con JOIN

```sql
SELECT price 
FROM products p 
JOIN comments c ON p.product_id = c.product_id 
WHERE sku = 123456
```

---

## Operaciones Básicas de SQL

### Comandos Principales

```sql
SELECT  -- Consultar/leer datos
CREATE  -- Crear tablas, bases de datos, etc.
ALTER   -- Modificar estructura
INSERT  -- Agregar nuevos registros
DELETE  -- Eliminar registros
UPDATE  -- Modificar registros existentes
```

---

## Escalabilidad y Planificación

### Construir para Crecer

**Principio:** Construir con la idea de crecer, lanzar una aplicación

**Advertencia importante:**
> **No tiene sentido sentarse durante días/meses para que sea future-proof**

**Enfoque recomendado:**

- **Desarrollo iterativo** - mejora continua
- **Escalabilidad gradual** - crece según las necesidades
- **Optimización cuando sea necesario** - no prematura

---

## Universalidad de SQL

**SQL es tan potente y natural que todas las bases de datos lo utilizan**

- **Estándar universal** en el mundo de las bases de datos
- **Sintaxis consistente** entre diferentes sistemas
- **Facilidad de aprendizaje** y uso
