-- =============================================
-- Query 5: Selecting measure
--  Change "Death" to "Incidence"
--
-- Author:  jonnykong@cs.ucla.edu
-- Date:    2019-09-12
-- =============================================


SELECT  location_name, sum(Val)
FROM    meningitis
WHERE   measure_name = 'Incidence'
GROUP BY location_name;

SELECT  sum(Val)
FROM meningitis
WHERE   measure_name = 'Incidence';