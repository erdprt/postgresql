call scripts.conf.bat %*
echo 'reinit sequence database ' %1% ' schema ' %2%





psql.exe -d %DBNAME% -f %DATABASES_DIR%\%DBNAME%/schemas/%SCHEMANAME%/scripts/schema.sequence.reinit.sql