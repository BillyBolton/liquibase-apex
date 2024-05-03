# LICENSE UPL 1.0
#
# Copyright (c) 2021, Oracle and/or its affiliates. All rights reserved.
#
# Container image template for Oracle Instant Client
#
# HOW TO BUILD THIS IMAGE AND RUN A CONTAINER
# --------------------------------------------
#
# Execute:
#      $ docker build --pull -t oraclelinux8-instantclient:21 .
#      $ docker run -ti --rm oraclelinux8-instantclient:21 sqlplus /nolog
#
# NOTES
# -----
#
# Applications using Oracle Call Interface (OCI) 21 can connect to
# Oracle Database 12.1 or later.  Some tools may have other
# restrictions.
#
# Oracle Instant Client 21 automatically configures the global library search
# path to include Instant Client libraries.
#
# OPTIONAL ORACLE CONFIGURATION FILES
# -----------------------------------
#
# Optional Oracle Network and Oracle client configuration files can be put in the
# default configuration file directory /usr/lib/oracle/21/client64/lib/network/admin.
# Configuration files include tnsnames.ora, sqlnet.ora, oraaccess.xml and
# cwallet.sso.  You can use a Docker volume to mount the directory containing
# the files at runtime, for example:
#
#   docker run -v /my/host/wallet_dir:/usr/lib/oracle/21/client64/lib/network/admin:Z,ro . . .
#
# This avoids embedding private information such as wallets in images.  If you
# do choose to include network configuration files in images, you can use a
# Dockerfile COPY, for example:
#
#   COPY tnsnames.ora sqlnet.ora /usr/lib/oracle/21/client64/lib/network/admin/
#
# There is no need to set the TNS_ADMIN environment variable when files are in
# the container's default configuration file directory, as shown.
#
# ORACLE INSTANT CLIENT PACKAGES
# ------------------------------
#
# Instant Client 21 Packages for Oracle Linux 8 are available from
#   https://yum.oracle.com/repo/OracleLinux/OL8/oracle/instantclient21/x86_64/
# Also see https://yum.oracle.com/oracle-instant-client.html
#
# Base - one of these packages is required to run applications and tools
#   oracle-instantclient-basic      : Basic Package - All files required to run OCI, OCCI, and JDBC-OCI applications
#   oracle-instantclient-basiclite  : Basic Light Package - Smaller version of the Basic package, with only English error messages and Unicode, ASCII, and Western European character set support
#
# Tools - optional packages (requires the 'basic' package)
#   oracle-instantclient-sqlplus    : SQL*Plus Package - The SQL*Plus command line tool for SQL and PL/SQL queries
#   oracle-instantclient-tools      : Tools Package - Includes Data Pump, SQL*Loader and Workload Replay Client
#
# Development and Runtime - optional packages (requires the 'basic' package)
#   oracle-instantclient-devel      : SDK Package - Additional header files and an example makefile for developing Oracle applications with Instant Client
#   oracle-instantclient-jdbc       : JDBC Supplement Package - Additional support for Internationalization under JDBC
#   oracle-instantclient-odbc       : ODBC Package - Additional libraries for enabling ODBC applications
#
# PREBUILT CONTAINER
# ------------------
#
# A prebuilt container from this Dockerfile is available from
#   https://github.com/orgs/oracle/packages/container/package/oraclelinux8-instantclient
# and can be pulled with:
#   docker pull ghcr.io/oracle/oraclelinux8-instantclient:21

FROM oraclelinux:8

# Update package repository and install Java 17, unzip
RUN dnf -y install oracle-instantclient-release-el8 && \
    dnf -y install oracle-instantclient-basic oracle-instantclient-devel oracle-instantclient-sqlplus && \
    dnf -y install java-17-openjdk-headless unzip && \
    rm -rf /var/cache/dnf

# Download and install Liquibase
ARG LIQUIBASE_VERSION=4.26.0
RUN curl -L -o /tmp/liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" && \
    tar -xzf /tmp/liquibase-${LIQUIBASE_VERSION}.tar.gz -C /usr/local/bin/ && \
    chmod +x /usr/local/bin/liquibase && \
    rm /tmp/liquibase-${LIQUIBASE_VERSION}.tar.gz

# Download and install Oracle database driver
RUN curl -o /usr/local/bin/lib/ojdbc11.jar https://download.oracle.com/otn-pub/otn_software/jdbc/233/ojdbc11.jar

# Download and install SQLcl
ARG SQLCL_VERSION=latest
RUN curl -L -o /tmp/sqlcl-${SQLCL_VERSION}.zip "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-${SQLCL_VERSION}.zip" -H "Cookie: oraclelicense=accept-securebackup-cookie" && \
    mkdir -p /opt/sqlcl && \
    unzip /tmp/sqlcl-${SQLCL_VERSION}.zip -d /opt/sqlcl && \
    find /opt/sqlcl -type f -iname '*.sh' -exec chmod +x {} + && \
    rm /tmp/sqlcl-${SQLCL_VERSION}.zip

# Add SQLcl to the PATH environment variable
ENV PATH=$PATH:/opt/sqlcl/sqlcl/bin

# Set the entry point to sqlcl
CMD ["sql"]
# CMD ["sqlplus", "-v"]
# CMD ["liquibase", "-v"]
