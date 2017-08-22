call scripts.conf.bat %*
echo 'delete datas for database bas_' %1% ' schema ' + %2%





SET PSQL_OPTS=--set SCHEMA_NAME=%SCHEMANAME% --set SCHEMA_NAME_WITH_QUOTE='%SCHEMANAME%'

psql.exe %PSQL_OPTS% -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.truncate.sql > %TRACES_DIR%\schema.truncate_%F_DATETIME%.log 2>&1