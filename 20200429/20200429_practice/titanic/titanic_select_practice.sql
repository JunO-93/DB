-- SQLite
-- SELECT index, PassengerId, Survived, Pclass, Name, Sex, Age, SibSp, Parch, Ticket, Fare, Cabin, Embarked
-- FROM `titanic_table`;

SELECT *
FROM titanic_table;


SELECT Pclass,count(Pclass),AVG(Age)
FROM titanic_table
WHERE SEX = 'female'
GROUP BY Pclass;

DROP TABLE NEW_titanic_table;

-- 테이블 정의
CREATE TABLE NEW_titanic_table ( 
    Pclass REAL NOT NULL,
    Pclass_count REAL NOT NULL,
    age_avg REAL NOT NULL  
)

INSERT INTO NEW_titanic_table
SELECT Pclass,count(Pclass),AVG(Age)
FROM titanic_table
WHERE SEX = 'female'
GROUP BY Pclass;

SELECT * FROM NEW_titanic_table;