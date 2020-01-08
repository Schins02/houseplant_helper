\set ON_ERROR_STOP on

CREATE TABLE end_user (
    id bigint NOT NULL,
    account_locked_at timestamp with time zone,
    created_at timestamp with time zone,
    created_by_id bigint,
    deleted boolean,
    deleted_at timestamp with time zone,
    deleted_by_id bigint,
    email character varying(255),
    failed_attempts integer,
    first_name character varying(255) NOT NULL,
    last_login_at timestamp with time zone,
    last_name character varying(255) NOT NULL,
    modified_at timestamp with time zone,
    modified_by_id bigint,
    password character varying(255) NOT NULL,
    password_changed_at timestamp with time zone,
    settings_id bigint,
    status character varying(255),
    title character varying(255),
    username character varying(255) NOT NULL
);

ALTER TABLE ONLY end_user
    ADD CONSTRAINT end_user_pkey PRIMARY KEY (id);

ALTER TABLE ONLY end_user
    ADD CONSTRAINT end_user_username_key UNIQUE (username);


