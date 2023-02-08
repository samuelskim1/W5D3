PRAGMA foreign_keys = ON

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL,
);


DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    author_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    
    FOREIGN KEY (author_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS question_follows

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    users_id TEXT NOT NULL,
    questions_id TEXT NOT NULL,

    FOREIGN KEY (users_id) REFERENCES users(id)
    FOREIGN KEY (questions_id) REFERENCES questions(id)

);


DROP TABLE IF EXISTS 

CREATE TABLE (


);


DROP TABLE IF EXISTS 

CREATE TABLE (


);