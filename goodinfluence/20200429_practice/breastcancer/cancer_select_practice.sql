-- SQLite
-- SELECT index, meanradius, meantexture, meanperimeter, meanarea, meansmoothness, 
-- meancompactness, meanconcavity, meanconcavepoints, meansymmetry, meanfractaldimension, 
-- radiuserror, textureerror, perimetererror, areaerror, smoothnesserror, compactnesserror,
-- concavityerror, concavepointserror, symmetryerror, fractaldimensionerror, worstradius, 
-- worsttexture, worstperimeter, worstarea, worstsmoothness, worstcompactness, worstconcavity, 
-- worstconcavepoints, worstsymmetry, worstfractaldimension
-- FROM `cancer_table`;


SELECT meanradius,meantexture,meanarea
FROM cancer_table
where meanarea >=1000;