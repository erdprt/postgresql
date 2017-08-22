call scripts.conf.bat %*
echo 'reindex database ' %1% ' schema ' + %2%





psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.reindex.sql