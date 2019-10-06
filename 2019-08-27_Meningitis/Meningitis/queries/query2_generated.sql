-- 2019-09-11T03:39:16.237
SELECT [meningitis].[location_name] AS [location_name],
  SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2017))
GROUP BY [meningitis].[location_name]

-- 2019-09-11T03:39:16.23
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2017))
GROUP BY ()

-- 2019-09-11T03:39:15.547
SELECT [meningitis].[location_name] AS [location_name],
  SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2016))
GROUP BY [meningitis].[location_name]

-- 2019-09-11T03:39:15.54
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2016))
GROUP BY ()

-- 2019-09-11T03:39:14.837
SELECT [meningitis].[location_name] AS [location_name],
  SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2015))
GROUP BY [meningitis].[location_name]

-- 2019-09-11T03:39:14.82
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2015))
GROUP BY ()

-- 2019-09-11T03:39:13.637
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2014))
GROUP BY ()

-- 2019-09-11T03:39:13.633
SELECT [meningitis].[location_name] AS [location_name],
  SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths') AND (DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) = 2014))
GROUP BY [meningitis].[location_name]
