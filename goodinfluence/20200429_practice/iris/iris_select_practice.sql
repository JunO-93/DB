-- SQLite
-- SELECT index, sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm
-- FROM `iris_table`;

SELECT *
FROM iris_table
WHERE sepal_length_cm >=5 AND petal_length_cm >2;