PRAGMA foreign_keys = ON

DROP TABLE IF EXISTS question_likes;
DROP TABLE IF EXISTS replies;
DROP TABLE IF EXISTS question_follows;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS users;




CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL,
);



CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    author_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    
    FOREIGN KEY (author_id) REFERENCES users(id)
);



CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    users_id TEXT NOT NULL,
    questions_id TEXT NOT NULL,

    FOREIGN KEY (users_id) REFERENCES users(id)
    FOREIGN KEY (questions_id) REFERENCES questions(id)

);



CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    question_id INTEGER NOT NULL,
    parent_reply_id INTEGER NOT NULL,
    body TEXT NOT NULL,

    FOREIGN KEY (parent_reply_id) REFERENCES replies(id)
    FOREIGN KEY (questions_id) REFERENCES questions(id)

);



CREATE TABLE question_likes (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    number_of_likes INTEGER NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
    FOREIGN KEY (question_id) REFERENCES questions(id)

);

INSERT INTO
    users(fname, lname)
VALUES
    ('Bruce', 'Willis'),
    ('Anya', 'Taylor-Joy'),
    ('James', 'Bond')
    ('Elizabeth', 'Taylor')
    ('Brad', 'Pitt');

INSERT INTO
    questions(author_id, title, body)
VALUES
    ((SELECT id FROM users WHERE users.fname = 'James' AND users.lname = 'Bond'), 'Oscars?', 'Who won the Best Movie last year?')
    ((SELECT id FROM users WHERE users.fname = 'Brad' AND users.lname = 'Pitt'), 'Snacks?', 'Anyone have a snack for me?')
    ((SELECT id FROM users WHERE users.fname = 'Anya' AND users.lname = 'Taylor-Joy'), 'Ballet?', 'Who can teach me ballet?')

