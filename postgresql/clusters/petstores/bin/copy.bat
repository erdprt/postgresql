call scripts.conf.bat %*
echo 'copy datas for database bas_' %1%
SET START_ALL=%date% %time%





SET PSQL_OPTS=--set SCHEMA_NAME=%SCHEMANAME% --set SCHEMA_NAME_WITH_QUOTE='%SCHEMANAME%'

psql.exe %PSQL_OPTS% -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.truncate.sql > %TRACES_DIR%\schema.truncate_%F_DATETIME%.log 2>&1

SET START=%date% %time%

psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.drop.constraints.sql > %TRACES_DIR%\schema.drop.constraints_%F_DATETIME%.log 2>&1
psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.copy.sql > %TRACES_DIR%\schema.copy_%F_DATETIME%.log 2>&1
psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.create.constraints.sql > %TRACES_DIR%\schema.create.constraints_%F_DATETIME%.log 2>&1
psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.reindex.sql > %TRACES_DIR%\schema.reindex_%F_DATETIME%.log 2>&1

SET END_ALL=%date% %time%
echo processing 'start:' %START% ' end:' %END_ALL%
echo total 'start:' %START_ALL% ' end:' %END_ALL%
