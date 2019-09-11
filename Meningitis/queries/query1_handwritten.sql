-- =============================================
-- Query 1: Apply filters
--  Toggle "H influenzae type B meningitis" off and on, then toggle "1 to 4" off and on.
--
-- Author:  jonnykong@cs.ucla.edu
-- Date:    2019-09-11
-- =============================================

SELECT  sum(val)
FROM    meningitis
WHERE   cause_name IN ('Meningococcal meningitis', 
                       'Neonatal sepsis and other neonatal infections',
                       'Other meningitis',
                       'Pneumococcal meningitis');

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   cause_name IN ('Meningococcal meningitis', 
                       'Neonatal sepsis and other neonatal infections',
                       'Other meningitis',
                       'Pneumococcal meningitis')
GROUP BY location_name;


SELECT  sum(val)
FROM    meningitis
WHERE   age_name IN ('All Ages', 
                     'Late Neonatal',
                     'Early Neonatal');

SELECT  location_name, sum(val)
FROM    meningitis
WHERE   age_name IN ('All Ages', 
                     'Late Neonatal',
                     'Early Neonatal')
GROUP BY location_name;