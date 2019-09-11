-- 2019-09-11T03:44:29.3
SELECT [meningitis].[location_name] AS [location_name],
  SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY [meningitis].[location_name]

-- 2019-09-11T03:44:29.3
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY ()

-- 2019-09-11T03:44:26.507
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[cause_name] >= 'Meningococcal meningitis') AND ([meningitis].[cause_name] <= 'Pneumococcal meningitis') AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY ()

-- 2019-09-11T03:44:26.507
SELECT [meningitis].[location_name] AS [location_name],
  SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[cause_name] >= 'Meningococcal meningitis') AND ([meningitis].[cause_name] <= 'Pneumococcal meningitis') AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY [meningitis].[location_name]