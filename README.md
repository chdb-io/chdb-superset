# <img src="https://avatars.githubusercontent.com/u/132536224?s=48&v=4" /> chdb + superset

Docker demo showcasing chdb + Apache Superset connectivity

## Setup
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

### Usage

![image](https://github.com/chdb-io/chdb-superset-demo/assets/1423657/0f62c46b-e689-4a98-9c6a-da6f29367658)

![image](https://github.com/chdb-io/chdb-superset-demo/assets/1423657/d28d3b56-0d36-4d34-a24c-a0b8e2a1491d)

