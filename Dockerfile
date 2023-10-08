FROM amancevice/superset:latest
# Switching to root to install the required packages
USER root
RUN pip install clickhouse-connect
COPY include/chdb_sqlalchemy-0.14.2-py3-none-any.whl /tmp/chdb_sqlalchemy-0.14.2-py3-none-any.whl
RUN pip install /tmp/chdb_sqlalchemy-0.14.2-py3-none-any.whl
COPY include/chdb-database.yml /etc/chdb.yml
USER superset
