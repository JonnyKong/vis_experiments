-- =============================================
-- Query 3: Hovering over countries
--  Hover over Greenland, Canada, United States, and Mexico
--
-- Author:  jonnykong@cs.ucla.edu
-- Date:    2019-09-11
-- =============================================


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'Greenland'
GROUP BY year_value, measure_name
HAVING  measure_name IN ('Incidence', 'Deaths');


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'Canada'
GROUP BY year_value, measure_name
HAVING  measure_name IN ('Incidence', 'Deaths');


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'United States'
GROUP BY year_value, measure_name
HAVING  measure_name IN ('Incidence', 'Deaths');


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'Mexico'
GROUP BY year_value, measure_name
HAVING  measure_name IN ('Incidence', 'Deaths');