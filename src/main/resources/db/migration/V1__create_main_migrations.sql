CREATE TABLE IF NOT EXISTS users
(
    id       INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username VARCHAR(255)        NOT NULL,
    email    VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255)        NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks
(
    id          INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title       VARCHAR(255) NOT NULL,
    description TEXT,
    status      VARCHAR(16)  NOT NULL,
    priority    VARCHAR(16)  NOT NULL,
    author_id   INTEGER      NOT NULL REFERENCES users (id),
    executor_id INTEGER REFERENCES users (id)
);

CREATE TABLE IF NOT EXISTS comments
(
    id          INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title       VARCHAR(255) NOT NULL,
    description TEXT,
    author_id   INTEGER      NOT NULL REFERENCES users (id)
);