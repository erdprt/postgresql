call scripts.conf.bat %*
echo 'create database' %2%
rem mkdir %CLUSTER_INSTANCE2%\tablespaces\tbl_%1%




SET PSQL_OPTS=%PSQL_OPTS% --set SCHEMA_NAME=%SCHEMANAME% --set SCHEMA_NAME_WITH_QUOTE='%SCHEMANAME%' --pset=tuples_only

psql.exe %PSQL_OPTS% -d %DBNAME% -f %CLUSTER_INSTANCE%/scripts/scripts/refresh.truncate.sql -o %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.truncate.sql
psql.exe %PSQL_OPTS% -d %DBNAME% -f %CLUSTER_INSTANCE%/scripts/scripts/refresh.reindex.sql -o %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.reindex.sql