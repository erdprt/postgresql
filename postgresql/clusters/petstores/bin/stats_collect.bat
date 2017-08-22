call scripts.conf.bat %*
echo 'create database' %2%
rem mkdir %CLUSTER_INSTANCE2%\tablespaces\tbl_%1%




SET PSQL_OPTS=--set SCHEMA_NAME=%SCHEMANAME% --set SCHEMA_NAME_WITH_QUOTE='%SCHEMANAME%'

psql.exe %PSQL_OPTS% -d %DBNAME% -f %CLUSTER_INSTANCE%/scripts/scripts/stats.collect.sql -H -o  %TRACES_DIR%\stats.collect_%F_DATETIME%.html