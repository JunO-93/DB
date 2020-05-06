-- SQLite
-- SELECT index, alcohol, malic_acid, ash, 
-- alcalinity_of_ash, magnesium, total_phenols, flavanoids,
--  nonflavanoid_phenols, proanthocyanins, color_intensity, hue, 
--  od280/od315_of_diluted_wines, proline
-- FROM `wine_table`;


SELECT *
FROM wine_table,target_table
WHERE wine_table.`index` = target_table.`index`

SELECT avg(wine_table.alcohol),avg(wine_table.malic_acid),avg(wine_table.total_phenols),target_table.target
FROM wine_table,target_table
WHERE wine_table.`index` = target_table.`index` 
GROUP BY target_table.target
ORDER BY alcohol;

-- 테이블 정의
CREATE TABLE NEW_wine_table(
    alcohol_avg REAL NOT NULL,
    malic_acid_avg REAL NOT NULL,
    total_phenols_avg REAL NOT NULL,
    taget_name TEXT NOT NULL
);

--테이블에 쿼리문으로 값 입력

INSERT INTO NEW_wine_table
SELECT avg(wine_table.alcohol),avg(wine_table.malic_acid),avg(wine_table.total_phenols),target_table.target
FROM wine_table,target_table
WHERE wine_table.`index` = target_table.`index` 
GROUP BY target_table.target
ORDER BY alcohol;

SELECT * FROM NEW_wine_table;