\set ON_ERROR_STOP on

CREATE TABLE end_user_role (
    role_id bigint NOT NULL,
    user_id bigint NOT NULL
);

ALTER TABLE ONLY end_user_role
    ADD CONSTRAINT end_user_role_pkey PRIMARY KEY (role_id, user_id);


