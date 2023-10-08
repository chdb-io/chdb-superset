# chdb + superset

Demo chdb + Apache Superset

## Usage
Clone this repository and use docker compose to initialize the demo

```
docker compose pull
docker compose up -d
```

Once all services are started, initialize the system and add an admin user

```
docker exec -ti superchdb superset-init
docker exec -ti superchdb superset import_datasources -p /etc/chdb-database.yml
```

### Configuration

Access Superset on port `8088` and create a Database Connection:

##### Name
```
chdb
```
##### SQLALCHEMY URI
```
clickhousedb://chdb:8123/database?secure=false
```
