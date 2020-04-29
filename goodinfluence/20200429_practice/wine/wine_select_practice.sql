-- SQLite
-- SELECT index, alcohol, malic_acid, ash, 
-- alcalinity_of_ash, magnesium, total_phenols, flavanoids,
--  nonflavanoid_phenols, proanthocyanins, color_intensity, hue, 
--  od280/od315_of_diluted_wines, proline
-- FROM `wine_table`;


SELECT *
FROM wine_table
WHERE color_intensity+hue > 6;