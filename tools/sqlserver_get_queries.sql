SELECT      SQLTEXT.text, STATS.last_execution_time, STATS.execution_count
FROM        sys.dm_exec_query_stats STATS
CROSS APPLY sys.dm_exec_sql_text(STATS.sql_handle) AS SQLTEXT
WHERE       STATS.last_execution_time > GETDATE()-1
            AND SQLTEXT.text LIKE '%meningitis%'
ORDER BY    STATS.last_execution_time DESC;
GO