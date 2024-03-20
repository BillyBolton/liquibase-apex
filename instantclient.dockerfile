FROM ghcr.io/oracle/oraclelinux8-instantclient:21

# Install dependencies
RUN microdnf install -y wget unzip && \
    microdnf clean all

# Download and install Liquibase
ENV LIQUIBASE_VERSION=4.6.3
ENV LIQUIBASE_HOME=/opt/liquibase
ENV PATH="${PATH}:${LIQUIBASE_HOME}"
RUN wget -O /tmp/liquibase-${LIQUIBASE_VERSION}.zip \
    https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.zip && \
    unzip /tmp/liquibase-${LIQUIBASE_VERSION}.zip -d /opt && \
    rm /tmp/liquibase-${LIQUIBASE_VERSION}.zip

WORKDIR /opt/liquibase

# Entry point
ENTRYPOINT ["liquibase"]
