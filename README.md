# MySQL con Docker

Contenedor MySQL 8.0 con base de datos `personas_db` inicializada automáticamente via Docker Compose.

## Requisitos

- [Docker](https://www.docker.com/) y Docker Compose instalados

## Estructura

```
.
├── docker-compose.yml   # Orquestación del contenedor
├── Dockerfile           # Imagen personalizada (opcional)
└── init.sql             # Script de inicialización de la base de datos
```

## Base de datos

Al iniciar el contenedor se crea automáticamente:

- **Base de datos:** `personas_db`
- **Tabla:** `persona` (id, nombre, apellido, edad)
- 10 registros de ejemplo precargados

## Uso

### Levantar el contenedor

```bash
docker compose up -d
```

### Conectarse a MySQL

```bash
# Desde la terminal del contenedor
docker exec -it mysql_personas mysql -u root -p
# Password: 123456
```

O desde cualquier cliente MySQL apuntando a:

| Parámetro | Valor         |
|-----------|---------------|
| Host      | `localhost`   |
| Puerto    | `3307`        |
| Usuario   | `root`        |
| Password  | `123456`      |
| Base de datos | `personas_db` |

### Detener el contenedor

```bash
docker compose down
```

> Los datos persisten en el volumen `mysql_data`. Para eliminarlos también ejecuta `docker compose down -v`.

## Consultas de ejemplo

```sql
USE personas_db;

-- Ver todos los registros
SELECT * FROM persona;

-- Filtrar mayores de edad
SELECT * FROM persona WHERE edad >= 18;
```
