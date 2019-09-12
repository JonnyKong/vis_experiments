-- =============================================
-- Query 2: changing the year
--  Start from "All", change year to "2014", "2015", "2016", and "2017" respectively.
--
-- Author:  jonnykong@cs.ucla.edu
-- Date:    2019-09-11
-- =============================================

SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2014' 
        AND measure_name = 'Deaths';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2014'
        AND measure_name = 'Deaths'
GROUP BY location_name;


SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2015' 
        AND measure_name = 'Deaths';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2015' 
        AND measure_name = 'Deaths'
GROUP BY location_name;


SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2016' 
        AND measure_name = 'Deaths';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2016' 
        AND measure_name = 'Deaths'
GROUP BY location_name;


SELECT  sum(val)
FROM    meningitis
WHERE   year_value = '2017' 
        AND measure_name = 'Deaths';

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   year_value = '2017' 
        AND measure_name = 'Deaths'
GROUP BY location_name;