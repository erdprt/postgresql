call scripts.conf.bat %*
echo 'delete datas for database bas_' %1% ' schema ' + %2%





psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.delete.tables.sql > %TRACES_DIR%\schema.delete.tables_%F_DATETIME%.log 2>&1