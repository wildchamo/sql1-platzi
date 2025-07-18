# MySQL en macOS - Instalación Simple

## 🍎 Instalación con Homebrew

### 1. Instalar MySQL

```bash
brew install mysql
```

### 2. Iniciar el servicio MySQL

```bash
brew services start mysql
```

### 3. Verificar que esté corriendo

```bash
brew services list
```

### 4. Conectarse a MySQL

```bash
mysql -u root
```

---

## 🔧 Configuración Inicial

### Configurar contraseña root (primera vez)

```bash
mysql_secure_installation
```

### Conectarse con contraseña

```bash
mysql -u root -p
```

---

## 🛠️ Comandos de Gestión

### Detener MySQL

```bash
brew services stop mysql
```

### Reiniciar MySQL

```bash
brew services restart mysql
```

### Ver estado del servicio

```bash
brew services list | grep mysql
```

### Actualizar MySQL

```bash
brew upgrade mysql
```

---

## 🚀 Primeros Pasos

Una vez conectado a MySQL, puedes empezar a usar SQL:

```sql
-- Ver todas las bases de datos
SHOW DATABASES;

-- Crear una nueva base de datos
CREATE DATABASE mi_base_datos;

-- Usar una base de datos
USE mi_base_datos;

-- Ver las tablas (cuando tengas algunas)
SHOW TABLES;
```

---

## 📝 Notas Importantes

- **Puerto por defecto:** 3306
- **Usuario por defecto:** root (sin contraseña inicialmente)
- **Ubicación de datos:** `/usr/local/var/mysql/`
- **Archivo de configuración:** `/usr/local/etc/my.cnf`

---

## 🔍 Solución de Problemas

### Si MySQL no inicia

```bash
# Ver logs de error
tail -f /usr/local/var/mysql/*.err

# Reiniciar completamente
brew services stop mysql
brew services start mysql
```

### Si no puedes conectarte

```bash
# Verificar que el puerto esté libre
lsof -i :3306

# Reiniciar el servicio
brew services restart mysql
```

---

## 💡 Recomendación

**Homebrew es la opción más simple para desarrollo en macOS** - fácil instalación, actualización y gestión de servicios.
