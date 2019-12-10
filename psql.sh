#!/bin/sh

# https://docs.docker.com/v17.12/engine/examples/postgresql_service/#using-container-linking
# https://hub.docker.com/_/postgres/
# https://www.postgresql.org/docs/12/app-psql.html

# to connect from my host:
#   psql -h host -p port -d dbname -U username --password

# to connect using container linking after successfully logged in (environment variables avaible):
#   psql -h $PG_PORT_5432_TCP_ADDR -p $PG_PORT_5432_TCP_PORT -d dbname -U username --password

if [ -z "$*" ]; then
    CMD="bash"
else
    CMD="psql -h \$PG_PORT_5432_TCP_ADDR -p \$PG_PORT_5432_TCP_PORT $*"
fi

# docker-postgres is the name I gave to the postgres container
/usr/bin/docker run \
    --rm \
    -it \
    --link docker-postgres:pg \
    postgres:12 sh -c "$CMD"
