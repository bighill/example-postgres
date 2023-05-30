# Basic

Two simple tables that are related.

## Usage

First, `cd` into this directory.

Set the schema and seed some sample data.

```bash
psql -h localhost -U pg -p 5555 -d pg -f schema_and_seed.sql
```

Query the data

```bash
psql -h localhost -U pg -p 5555 -d pg -f query.sql
```
