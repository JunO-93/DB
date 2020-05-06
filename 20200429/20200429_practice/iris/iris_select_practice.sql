-- SQLite
-- SELECT index, sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm
-- FROM `iris_table`;
--iris_table.sepal_length_cm,iris_table.sepal_width_cm,iris_table.petal_length_cm,iris_table.petal_width_cm,taget_table.target




SELECT *
FROM iris_table,target_table
WHERE iris_table.`index` = target_table.`index`
;


SELECT 
    iris_table.sepal_length_cm,iris_table.sepal_width_cm,iris_table.petal_length_cm,
    iris_table.petal_width_cm,target_table.target
FROM iris_table,target_table
WHERE iris_table.`index` = target_table.`index`
LIMIT 10;


-- 테이블 정의-
DROP TABLE NEW_iris_table;
CREATE TABLE NEW_iris_table ( 
    sepal_length_cm REAL NOT NULL,
    sepal_width_cm REAL NOT NULL,
    petal_length_cm REAL NOT NULL,
    petal_width_cm REAL NOT NULL,
    targetname TEXT NOT NULL
)
-- 기존테이블 값을 쿼리문으로 생성하여 넣음
INSERT INTO NEW_iris_table 
SELECT 
    iris_table.sepal_length_cm,iris_table.sepal_width_cm,iris_table.petal_length_cm,
    iris_table.petal_width_cm,upper(target_table.target)
FROM iris_table,target_table
WHERE iris_table.`index` = target_table.`index`
GROUP BY target_table.target
ORDER BY target_table.target;

--

SELECT *
FROM NEW_iris_table;