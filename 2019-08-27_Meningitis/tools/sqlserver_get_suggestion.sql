SELECT
  d.[object_id],
  s = OBJECT_SCHEMA_NAME(d.[object_id]),
  o = OBJECT_NAME(d.[object_id]),
  d.equality_columns,
  d.inequality_columns,
  d.included_columns,
  s.unique_compiles,
  s.user_seeks, s.last_user_seek,
  s.user_scans, s.last_user_scan
FROM sys.dm_db_missing_index_details AS d
INNER JOIN sys.dm_db_missing_index_groups AS g
ON d.index_handle = g.index_handle
INNER JOIN sys.dm_db_missing_index_group_stats AS s
ON g.index_group_handle = s.group_handle
WHERE d.database_id = DB_ID()
AND OBJECTPROPERTY(d.[object_id], 'IsMsShipped') = 0;
GO