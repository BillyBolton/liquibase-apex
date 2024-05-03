--liquibase formatted sql
--changeset BillyBolton:create-foo-table

CREATE TABLE foo
(
    id   Integer PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    UNIQUE (name)
);