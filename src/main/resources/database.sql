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
VALUES ('ADMIN', '1', 'admin', 'surname1', 18, 'a1@a');
INSERT INTO users.users (username, password, name, surname, age, email)
VALUES ('USER', '2', 'user', 'surname2', 18, 'a2@a');
INSERT INTO users.users (username, password, name, surname, age, email)
VALUES ('TEST', '$2y$10$nYomgDzTUQycPFR6kXTe1emJwWHR5oXXqfOjxHzqulZigY3lIqd.e', 'test', 'surname3', 18, 'a3@a');

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
INSERT INTO users.roles
VALUES (3, 'ROLE_ADMIN');


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
INSERT INTO users.user_roles
VALUES (3, 2);






