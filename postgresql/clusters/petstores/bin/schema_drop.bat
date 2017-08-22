call scripts.conf.bat %*
echo 'drop schema' %2%





psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.drop.constraints.sql
psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.drop.tables.sql
psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.drop.sql 