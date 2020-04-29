-- SQLite
-- SELECT index, PassengerId, Survived, Pclass, Name, Sex,
-- Age, SibSp, Parch, Ticket, Fare, Cabin, Embarked
-- FROM `titanic_table`;

SELECT *
FROM titanic_table
WHERE SEX LIKE 'fe%'