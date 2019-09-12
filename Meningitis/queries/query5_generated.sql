-- 2019-09-12T17:01:13.207
SELECT [meningitis].[age_name] AS [age_name],
  [meningitis].[cause_name] AS [cause_name],
  DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) AS [yr:year_value:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE ([meningitis].[measure_name] = 'Incidence')
GROUP BY [meningitis].[age_name],
  [meningitis].[cause_name],
  DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END))

-- 2019-09-12T17:01:13.163
SELECT COUNT_BIG(DISTINCT [meningitis].[age_name]) AS [ctd:age_name:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE ([meningitis].[measure_name] = 'Incidence')
GROUP BY ()

-- 2019-09-12T17:01:13.013
SELECT [meningitis].[location_name] AS [location_name],
  SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Incidence'))
GROUP BY [meningitis].[location_name]

-- 2019-09-12T17:01:13.007
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Incidence'))
GROUP BY ()

-- 2019-09-12T17:01:12.997
SELECT [meningitis].[age_name] AS [age_name]
FROM [dbo].[meningitis] [meningitis]
WHERE ([meningitis].[measure_name] = 'Incidence')
GROUP BY [meningitis].[age_name]
