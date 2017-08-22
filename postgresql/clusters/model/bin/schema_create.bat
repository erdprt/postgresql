call scripts.conf.bat %*
echo 'create database' %2%

psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%\schemas\%SCHEMANAME%\scripts\schema.create.sql > %TRACES_DIR%\schema.create_%F_DATETIME%.log 2>&1
psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%\schemas\%SCHEMANAME%\scripts\schema.create.tables.sql > %TRACES_DIR%\schema.create.tables_%F_DATETIME%.log 2>&1
psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%\schemas\%SCHEMANAME%\scripts\schema.create.constraints.sql > %TRACES_DIR%\schema.create.constraints_%F_DATETIME%.log 2>&1