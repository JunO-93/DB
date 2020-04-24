-- SQLite

CREATE TABLE COMPANY(
    ID REAL NOT NULL,
    NAME TEXT NOT NULL,
    AGE REAL NOT NULL,
    ADDRESS TEXT,
    SALARY REAL
);

CREATE TABLE DEPARTMENT(
    ID REAL NOT NULL,
    DEPT TEXT NOT NULL,
    EMP_ID REAL NOT NULL
);