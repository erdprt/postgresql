call scripts.conf.bat %*
echo 'reindex database ' %1% ' schema ' + %2%





psql.exe -d bas_%DATABASE_NAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.reindex.sql