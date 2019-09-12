-- =============================================
-- Query 3: Selecting countries
--  Select Greenland, Canada, United States, and Mexico
--
-- Author:  jonnykong@cs.ucla.edu
-- Date:    2019-09-11
-- =============================================


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'Greenland'
GROUP BY year_value, measure_name
HAVING  measure_name ='Deaths';

SELECT  sum(val)
FROM    meningitis
WHERE   location_name = 'Greenland' 
        AND measure_name = 'Deaths';


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'Canada'
GROUP BY year_value, measure_name
HAVING  measure_name ='Deaths';

SELECT  sum(val)
FROM    meningitis
WHERE   location_name = 'Canada' 
        AND measure_name = 'Deaths';


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'United States'
GROUP BY year_value, measure_name
HAVING  measure_name ='Deaths';

SELECT  sum(val)
FROM    meningitis
WHERE   location_name = 'United States' 
        AND measure_name = 'Deaths';


SELECT  year_value, measure_name, sum(val)
FROM    meningitis
WHERE   location_name = 'Mexico'
GROUP BY year_value, measure_name
HAVING  measure_name ='Deaths';

SELECT  sum(val)
FROM    meningitis
WHERE   location_name = 'Mexico' 
        AND measure_name = 'Deaths';