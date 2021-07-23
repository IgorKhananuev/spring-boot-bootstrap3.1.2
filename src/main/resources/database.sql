-- DaoJdbcAuthentication

CREATE DATABASE users;

# -- Table: users
CREATE TABLE users.users
(
    id       BIGINT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(80) NOT NULL,
    name     VARCHAR(50) NOT NULL,
    surname  VARCHAR(50) NOT NULL,
    age      INT,
    email    VARCHAR(50) UNIQUE

);

INSERT INTO users.users (username, password, name, surname, age, email)
VALUES ('ADMIN', '$2a$10$HFneOueUO3z5chv3uNjlLe47umaXEUhWx8hl7UM.vaWvsyGIpW4U.', 'admin', 'surname1', 18, 'a1@a'); -- password 1
INSERT INTO users.users (username, password, name, surname, age, email)
VALUES ('USER', '$2a$10$HFneOueUO3z5chv3uNjlLe47umaXEUhWx8hl7UM.vaWvsyGIpW4U.', 'user', 'surname2', 18, 'a2@a'); -- password 1


-- Table: roles
CREATE TABLE users.roles
(
    id   BIGINT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO users.roles
VALUES (1, 'ROLE_USER');
INSERT INTO users.roles
VALUES (2, 'ROLE_ADMIN');



-- Table: for mapping user add roles: user_roles
CREATE TABLE users.user_roles
(
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users.users (id),
    FOREIGN KEY (role_id) REFERENCES users.roles (id),

    UNIQUE (user_id, role_id)
);

INSERT INTO users.user_roles
VALUES (1, 2);
INSERT INTO users.user_roles
VALUES (2, 1);






