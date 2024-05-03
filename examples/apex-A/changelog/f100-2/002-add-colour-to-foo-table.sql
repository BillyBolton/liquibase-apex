--liquibase formatted sql
--changeset BillyBolton:add-colour-to-foo-table

ALTER TABLE foo
ADD colour VARCHAR(20);
