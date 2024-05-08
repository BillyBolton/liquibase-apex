
# Liquibase + Oracle Apex

## Getting Started

1. Build APEX Docker Image:

    Follow the instructions [here](https://pretius.com/blog/oracle-apex-docker-ords/)

2. Ensure APEX is running and your login is setup properly from the previous step:

    Go to: [http://localhost:8023/ords/apex](http://localhost:8023/ords/apex)

3. Connect Apex to Docker Network

    `docker network connect apex_network 23cfree`

4. Build Liquibase Instantclient Image

    `docker build -t oracle-instantclient-sqlcl-sqlplus-liquibase .`

5. Connect Liquibase-Instantclient Image to Network

    `docker network connect apex_network oracle-instantclient-sqlcl-sqlplus-liquibase`

5. Run Liquibase

    `docker run --rm -ti --network apex_network -v ./examples/apex-A:/data oracle-instantclient-sqlplus-liquibase:v1.0 liquibase --defaultsFile=./data/liquibase.docker.properties --changelog-file=./data/changelog/changelog_create_f100.xml update --log-level=fine`
