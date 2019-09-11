-- =============================================
-- Query 2: changing the year
--  Start from "All", change year to "2014", "2015", "2016", and "2017" respectively.
--
-- Author:  jonnykong@cs.ucla.edu
-- Date:    2019-09-11
-- =============================================

SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2014';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2014'
GROUP BY location_name;


SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2015';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2015'
GROUP BY location_name;


SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2016';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2016'
GROUP BY location_name;


SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2017';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2017'
GROUP BY location_name;