--
-- schema
--

-- authors

DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
    id      SERIAL PRIMARY KEY,
    name    TEXT
);

-- publications

DROP TABLE IF EXISTS publications;

CREATE TABLE publications (
    id          SERIAL PRIMARY KEY,
    author_id   INTEGER,
    title       TEXT
);

--
-- seed
--

-- authors

INSERT INTO 
    authors (name)
VALUES
    ('Herman Hesse'),
    ('Robert Pirsig'),
    ('Albert Camus');

-- publications

INSERT INTO
    publications (author_id, title)
VALUES
    (1, 'Steppenwolf'),
    (2, 'Zen and the Art of Motorcycle Maintenance'),
    (3, 'The Stranger');
