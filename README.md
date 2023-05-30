# Postgres Playground

Notes & examples while learning Postgres.

Each directory here is a self contained example project.

- [Basic](./0_basic/README.md)

## Docker

```bash
cd $this_directory
docker compose up
```

bash in pg container

```bash
cd $this_directory
docker exec -it pg bash
```

With the current setup, any database changes will be wiped when running `docker compose down`

## psql

psql in the container

```bash
cd $this_directory
docker exec -it pg psql -U pg
```

psql from outside the container

```bash
psql -U pg -h localhost -p 5555 
```

Run sql commands from file

```bash
psql -h localhost -U pg -p 5555 -d pg -f $sql_file.sql
```

## psql cheats

List databases

```
pg=# \l 
```

List tables

```
pg=# \dt
```

List tables + size, description

```
pg=# \dt+
```

Describe table

```
pg=# \d table_name
```