call scripts.conf.bat %*
echo 'create database constraints' %1%




psql.exe -d bas_%DATABASE_NAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.create.constraints.sql > %TRACES_DIR%\schema.create.constraints_%F_DATETIME%.log 2>&1