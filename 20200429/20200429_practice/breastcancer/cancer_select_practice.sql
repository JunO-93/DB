-- SQLite
-- SELECT index, meanradius, meantexture, meanperimeter, meanarea, meansmoothness, 
-- meancompactness, meanconcavity, meanconcavepoints, meansymmetry, meanfractaldimension, 
-- radiuserror, textureerror, perimetererror, areaerror, smoothnesserror, compactnesserror,
-- concavityerror, concavepointserror, symmetryerror, fractaldimensionerror, worstradius, 
-- worsttexture, worstperimeter, worstarea, worstsmoothness, worstcompactness, worstconcavity, 
-- worstconcavepoints, worstsymmetry, worstfractaldimension
-- FROM `cancer_table`;

SELECT *
FROM cancer_table,target_table;


--select 문 실행
SELECT avg(cancer_table.meanarea),avg(cancer_table.areaerror),avg(cancer_table.worstarea),target_table.target
FROM cancer_table,target_table
WHERE cancer_table.`index` = target_table.`index` 
GROUP BY target_table.target
ORDER BY cancer_table.meanarea;

-- 테이블 정의

CREATE TABLE NEW_cancer_table(
    meanarea_avg REAL NOT NULL,
    areaerror_avg REAL NOT NULL,
    worstarea_avg REAL NOT NULL,
    target TEXT NOT NULL
);

INSERT INTO NEW_cancer_table
SELECT avg(cancer_table.meanarea),avg(cancer_table.areaerror),avg(cancer_table.worstarea),target_table.target
FROM cancer_table,target_table
WHERE cancer_table.`index` = target_table.`index` 
GROUP BY target_table.target
ORDER BY cancer_table.meanarea;

SELECT * FROM NEW_cancer_table;