call scripts.conf.bat %*
echo 'drop constraints ' %2%





psql.exe -d bas_%DATABASE_NAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.drop.constraints.sql > %TRACES_DIR%\schema.drop.constraints_%F_DATETIME%.log 2>&1
 