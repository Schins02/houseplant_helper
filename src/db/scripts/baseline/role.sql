\set ON_ERROR_STOP on

CREATE TABLE role (
    id bigint NOT NULL,
    version bigint NOT NULL,
    authority character varying(255)
);

ALTER TABLE ONLY role
    ADD CONSTRAINT role_authority_key UNIQUE (authority);

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


