-- 2019-09-12T04:17:49.533
SELECT SUM((CASE WHEN ([meningitis].[measure_name] = 'Incidence') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286986801155:ok],
  SUM((CASE WHEN ([meningitis].[measure_name] = 'Deaths') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286987456516:ok],
  DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) AS [yr:year_value:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'Mexico') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')))
GROUP BY DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END))

-- 2019-09-12T04:17:49.43
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'Mexico') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY ()

-- 2019-09-12T04:17:48.153
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'United States') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY ()

-- 2019-09-12T04:17:47.897
SELECT SUM((CASE WHEN ([meningitis].[measure_name] = 'Incidence') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286986801155:ok],
  SUM((CASE WHEN ([meningitis].[measure_name] = 'Deaths') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286987456516:ok],
  DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) AS [yr:year_value:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'United States') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')))
GROUP BY DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END))

-- 2019-09-12T04:17:46.74
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'Canada') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY ()

-- 2019-09-12T04:17:46.227
SELECT SUM((CASE WHEN ([meningitis].[measure_name] = 'Incidence') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286986801155:ok],
  SUM((CASE WHEN ([meningitis].[measure_name] = 'Deaths') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286987456516:ok],
  DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) AS [yr:year_value:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'Canada') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')))
GROUP BY DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END))

-- 2019-09-12T04:17:44.9
SELECT SUM([meningitis].[val]) AS [sum:val:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'Greenland') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')) AND ([meningitis].[measure_name] = 'Deaths'))
GROUP BY ()

-- 2019-09-12T04:17:44.127
SELECT SUM((CASE WHEN ([meningitis].[measure_name] = 'Incidence') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286986801155:ok],
  SUM((CASE WHEN ([meningitis].[measure_name] = 'Deaths') THEN [meningitis].[val] ELSE 0 END)) AS [sum:Calculation_1671750286987456516:ok],
  DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END)) AS [yr:year_value:ok]
FROM [dbo].[meningitis] [meningitis]
WHERE (([meningitis].[location_name] = 'Greenland') AND ([meningitis].[age_name] IN ('1 to 4', 'All Ages', 'Early Neonatal', 'Late Neonatal')))
GROUP BY DATEPART(year,(CASE
	WHEN 0 = ISDATE(CAST([meningitis].[year_value] AS VARCHAR)) THEN NULL
	ELSE DATEADD(day, DATEDIFF(day, 0, CAST(CAST([meningitis].[year_value] AS VARCHAR) as datetime)), 0) END))
